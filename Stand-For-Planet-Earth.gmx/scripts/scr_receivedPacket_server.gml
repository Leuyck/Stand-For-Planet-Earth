/// server script : receivedPacket

var buffer = argument[0]
var socket = argument[1]
var msgid = buffer_read (buffer, buffer_u8);

switch (msgid) {
    case 1: //latency request
        var time = buffer_read (buffer, buffer_u32);
        
        buffer_seek (global.bufferServer, buffer_seek_start, 0);
        buffer_write (global.bufferServer, buffer_u8, 1);
        buffer_write (global.bufferServer, buffer_u32, time);
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
        
        break;
    
    case 2: // registration request
        var pId = buffer_read(buffer, buffer_u32);
        var playerUsername = buffer_read(buffer, buffer_string);
        
        with (obj_player)
        {
            if(playerIdentifier == pId)
            {
                playerName = playerUsername;
                scr_showNotification ("The player " + playerName+ " has registered"); 
            }
        }
   
        scr_sendCurrentMapToClient(socket);
        
        break;
    
    case 5: //déconnection d'un client
        var pId = buffer_read (buffer, buffer_u32);
         
        with (obj_player)
        {
            if (playerIdentifier == pId)
            {
                ds_list_delete (global.players, playerSocket)
                scr_showNotification ("The player " + playerName+ " has been disconnected");  
                instance_destroy();      
            }  
        }
        for (var i = 0; i < ds_list_size(global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
                  
            buffer_seek(global.bufferServer, buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, 5);
            buffer_write (global.bufferServer, buffer_u32, pId);
            network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell(global.bufferServer));
        }
         
         if (global.inWorld == true)
         {
             with(obj_remotePlayer)
             {
                if (remotePlayerId == pId)
                {
                    instance_destroy();
                }
             }
         }

        break;
        
    case 6 : //Connexion d'un joueur sur la map

        var pId = buffer_read (buffer, buffer_u32); 
        var playerCharacter = buffer_read (buffer, buffer_string);
        var pName = "";
                
        var xpos = 100;
        var ypos = 100;
        
        with (obj_player) //transmet au client ses coordonnées tout en mettant a jour le obj_player
            {
                if (playerIdentifier == pId)
                {
                    self.playerInGame = true;
                    self.playerCharacter = playerCharacter;
                    pName = self.playerName;
                }
            }
            //créer une instance de remotePlayer sur le server
            if(instance_exists (obj_localPlayer))//only if we're in the gameworld
            {
                //create a remote player
                var remotePlayer = instance_create(xpos,ypos, obj_remotePlayer);
                remotePlayer.remotePlayerId = pId;
                remotePlayer.remotePlayerName = pName;
                remotePlayer.remotePlayerCharacter = playerCharacter;
            } 
            
            // tell all players about this new player      
            for (var i = 0; i < ds_list_size(global.players); i++)
            {
                var storedPlayerSocket = ds_list_find_value (global.players, i);
                scr_sendPlayerInfoToClient(storedPlayerSocket, pId, pName, playerCharacter, xpos, ypos)  
            }
    
            // tell me (client who is actually sending) about other players
            with (obj_remotePlayer)
            {
                if ( self.remotePlayerId != pId)
                {
                    scr_sendPlayerInfoToClient(socket, self.remotePlayerId, self.remotePlayerName, self.remotePlayerCharacter, self.x, self.y)
                }
            }            
            //tell me (client who is actually sending) about server
            with (obj_localPlayer)
            {
                scr_sendPlayerInfoToClient(socket, global.playerId, global.playerPseudo, global.character, self.x, self.y)
            }
        
        
        break;
    
    case 7 : //player movement update request (x + y + sprite number + dir)
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteIndex = buffer_read(buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var dir = buffer_read(buffer, buffer_f32);
        
        //tell other player about movements
        for (var i = 0; i < ds_list_size (global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
            
            if (storedPlayerSocket != socket) // don't send a packet to the client we go this request from
             {
                buffer_seek (global.bufferServer ,buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 7);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_f32, xx);
                buffer_write (global.bufferServer, buffer_f32, yy);
                buffer_write (global.bufferServer, buffer_u32, spriteIndex);
                buffer_write (global.bufferServer, buffer_u8, imageIndex);
                buffer_write (global.bufferServer, buffer_f32, dir);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }
        
        //tell server about clients moves
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                x = xx;
                y = yy ;
                image_angle = dir;
                sprite_index = spriteIndex;
                image_index = imageIndex;
            }
        }
        break;
    
    case 8 :  // chat
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var text = buffer_read (buffer, buffer_string);
        
        //tell other player about this change
        for (var i = 0; i < ds_list_size (global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
            
            if (storedPlayerSocket != socket) // don't send a packet to the client we go this request from
             {
                buffer_seek (global.bufferServer ,buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 8);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_string, pName);
                buffer_write (global.bufferServer, buffer_string, text);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }  
        // tell server about player's chat
       
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                scr_createAndMoveChat(text, pName, obj_remotePlayer)
            }
        }

    break;
    
    case 9 : // create and broadcast bullets from other players
    
        var pId = buffer_read (buffer, buffer_u32);
        var bulletDirection = buffer_read (buffer, buffer_f32);
        var bulletx = buffer_read (buffer, buffer_f32);
        var bullety = buffer_read (buffer, buffer_f32);

        //tell other player about this change
        for (var i = 0; i < ds_list_size (global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
            
            if (storedPlayerSocket != socket) // don't send a packet to the client we go this request from
             {
                buffer_seek (global.bufferServer , buffer_seek_start, 0);
                buffer_write(global.bufferServer, buffer_u8, 9);
                buffer_write(global.bufferServer, buffer_u32, pId);
                buffer_write(global.bufferServer, buffer_f32, bulletDirection);
                buffer_write(global.bufferServer, buffer_f32, bulletx);
                buffer_write(global.bufferServer, buffer_f32, bullety);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell(global.bufferServer));
             }
        }
     
        bullet_id = instance_create (bulletx, bullety, obj_bullet3);
        bullet_id.direction = bulletDirection;
        bullet_id.image_angle = bullet_id.direction;
                  
    break;
    
    case 10 : 
    
    break;

    case 12 : //door event
        
         var buttonId = buffer_read (buffer, buffer_u8);
         show_debug_message ("doorevent");
         with (obj_button)
         {
            if (self.buttonId == buttonId)
                {
                    scr_openDoor(id);
                }
         }
    break;
    
    case 13: //Création des différent button de la map rm_allChoseHero
    
        var pId =  buffer_read (buffer, buffer_u32);
        
        var xpos = 512
        
        if(room == rm_allChoseHero)
        {
                        
            if (!instance_exists (obj_btn_scrollHero_remote))
            {
                var ypos = 160
                var playerNumber = 2
            }
            else
            {
                with (obj_btn_scrollHero_remote)
                {
                    if (self.y != 160)
                    {
                        var ypos = 160;
                        var playerNumber = 2;
                    }
                    else if (self.y !=256)
                    {
                        var ypos = 256;
                        var playerNumber = 3;
                    }
                    else
                    {
                        var ypos = 352;
                        var playerNumber = 4;
                    }
                }
            }
            
            //créer une instance de remotePlayer sur le server
            if(instance_exists (obj_btn_scrollHero))
            {
                //create a remote player
                var remoteButton = instance_create(xpos,ypos, obj_btn_scrollHero_remote);
                remoteButton.remoteButtonId = pId;
                remoteButton.playerNumber = playerNumber;
                with (obj_player)
                {
                    if (self.playerIdentifier == pId)
                    {
                        self.playerNumber = playerNumber;
                    }
                }
            }   
        }
        else
        {
            with (obj_player)//voir ici le problème
            {   
                if(self.playerNumber != 2)
                {
                    var ypos = 160
                    var playerNumber = 2
                    if(playerIdentifier == pId)
                    {
                        self.playerNumber = playerNumber;
                    }
                }
                else if (self.playerNumber !=3)
                {
                    var ypos = 256;
                    var playerNumber = 3;
                    if(playerIdentifier == pId)
                    {
                        self.playerNumber = playerNumber;
                    }
                }
                else
                {
                    var ypos = 352;
                    var playerNumber = 4;
                    if(playerIdentifier == pId)
                    {
                        self.playerNumber = playerNumber;
                    }
                }
            }
        }
        // tell all players about this new player      
        for (var i = 0; i < ds_list_size(global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
              
            buffer_seek (global.bufferServer, buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, 13);
            buffer_write (global.bufferServer, buffer_u32, pId);
            buffer_write (global.bufferServer, buffer_f32, xpos);
            buffer_write (global.bufferServer, buffer_f32, ypos);
            buffer_write (global.bufferServer, buffer_u8, playerNumber);
            network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell(global.bufferServer));       
        }

        // tell me (client who is actually sending) about other players
        with (obj_btn_scrollHero_remote)
        {
            if (self.remoteButtonId != pId)
            {
                buffer_seek(global.bufferServer, buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 13);
                buffer_write (global.bufferServer, buffer_u32, self.remoteButtonId);
                buffer_write (global.bufferServer, buffer_f32, self.x);
                buffer_write (global.bufferServer, buffer_f32, self.y);
                buffer_write (global.bufferServer, buffer_u8, self.playerNumber);
                network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
            }
        }            
        //tell me (client who is actually sending) about server
        with (obj_btn_scrollHero)
        {
            buffer_seek(global.bufferServer, buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, 13);
            buffer_write (global.bufferServer, buffer_u32, self.buttonId);
            buffer_write (global.bufferServer, buffer_f32, self.x);
            buffer_write (global.bufferServer, buffer_f32, self.y);
            buffer_write (global.bufferServer, buffer_u8, global.playerNumber);
            network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
        }
        
        break;
            
    case 14 : //scrollHero button update
    
        var pId = buffer_read (buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        
        //tell other player about movements
        for (var i = 0; i < ds_list_size (global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
            
            if (storedPlayerSocket != socket) // don't send a packet to the client we go this request from
             {
                buffer_seek (global.bufferServer ,buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 14);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_u8, imageIndex);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }
        
        //tell server about clients moves
        with (obj_btn_scrollHero_remote)
        {
            if (remoteButtonId == pId)
            {
                image_index = imageIndex;
            }
        }
        break;
        
    case 15 :
        
        var pId = buffer_read (buffer, buffer_u32);
        
        with (obj_player)
        {
            if (playerIdentifier == pId)
            {
                ds_list_delete (global.players, playerSocket)
                scr_showNotification ("The player " + playerName+ " has been disconnected");  
                instance_destroy();      
            }  
        }
        for (var i = 0; i < ds_list_size(global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
                  
            buffer_seek(global.bufferServer, buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, 15);
            buffer_write (global.bufferServer, buffer_u32, pId);
            network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell(global.bufferServer));
        }

        with(obj_btn_scrollHero_remote)
         {
            if (remoteButtonId == pId)
            {
                instance_destroy();
            }
        }
         break;
       
}
