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
            else
            {
                buffer_seek(global.bufferServer, buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 5);
                buffer_write (global.bufferServer, buffer_u32, pId);
                network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
            }
         }
         with(obj_remotePlayer)
         {
            if (remotePlayerId == pId)
            {
                instance_destroy();
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
        var spriteIndex = buffer_read(buffer, buffer_u8);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var dir = buffer_read(buffer, buffer_u16);
        
        //tell other player about this change
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
                buffer_write (global.bufferServer, buffer_u8, spriteIndex);
                buffer_write (global.bufferServer, buffer_u8, imageIndex);
                buffer_write (global.bufferServer, buffer_u32, dir);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }
        
        //tell server about other players moves
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                x = xx;
                y = yy ;
                image_angle = dir;
                sprite_index = spriteIndex;
                image_index = imageIndex;
                
                /*switch (spriteNumber)
                {
                    case 1 :
                        sprite_index = spr_hero1_stand
                    break;
                    
                    case 2 :
                        sprite_index = spr_hero1_move
                    break;
                    
                    case 3 :
                        sprite_index = spr_hero1_shot
                    break;
                    
                    case 4 :
                        sprite_index = spr_hero1_reload
                    break;
                    
                    case 5 :
                        sprite_index = spr_hero1_melee_attack
                    break;      
                    
                    case 6 :
                        sprite_index = spr_hero2_stand
                    break;
                    
                    case 7 :
                        sprite_index = spr_hero2_move
                    break;
                    
                    case 8 :
                        sprite_index = spr_hero2_shot
                    break;      
                    
                    case 9 :
                        sprite_index = spr_hero3_stand
                    break;
                    
                    case 10 :
                        sprite_index = spr_hero3_move
                    break;
                    
                    case 11 :
                        sprite_index = spr_hero3_shot
                    break;                             
                }*/
                
                
                
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
                // create the chat 
                 if (instance_exists (obj_chat)) // décalle le chat déjà existant
                {
                    with (obj_chat)
                    {
                        y -=20
                    }
                }
                var chat = instance_create (x, y, obj_chat);//crée le chat
                chat.text = text;
                chat.playerTalking = pName;
                chat.owner = id;
               }
        }

    break;
    
    case 9 : // player state update and shot
    
        var pId = buffer_read (buffer, buffer_u32);
        var character = buffer_read (buffer, buffer_string);
        var state = buffer_read (buffer, buffer_string);
        var shot1_delay = buffer_read (buffer, buffer_u32);
        var bulletDirection1 = buffer_read (buffer, buffer_u32);
        var bulletDirection2 = buffer_read (buffer, buffer_u32);
        var bulletDirection3 = buffer_read (buffer, buffer_u32);
        var bulletDirection4 = buffer_read (buffer, buffer_u32);
        var bulletDirection5 = buffer_read (buffer, buffer_u32);
        
        
        //tell other player about this change
        for (var i = 0; i < ds_list_size (global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
            
            if (storedPlayerSocket != socket) // don't send a packet to the client we go this request from
             {
                buffer_seek (global.bufferServer ,buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 9);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_string, character);
                buffer_write (global.bufferServer, buffer_string, state);
                buffer_write (global.bufferServer, buffer_u32, shot1_delay);
                buffer_write (global.bufferServer, buffer_u32, bulletDirection1);
                buffer_write (global.bufferServer, buffer_u32, bulletDirection2);
                buffer_write (global.bufferServer, buffer_u32, bulletDirection3);
                buffer_write (global.bufferServer, buffer_u32, bulletDirection4);
                buffer_write (global.bufferServer, buffer_u32, bulletDirection5);
                
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }
                
        // tell to server about state changes of other players
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                
                dir = image_angle;
                
                if (character == "hero1" || character == "hero2")
                {
                    switch (state)
                    {
                        case "firing" :
                            var bullet_id
                            if (alarm[0] <= 0)
                            {
                                bullet_id = instance_create (x+lengthdir_x(193.00, dir+0.30), y+lengthdir_y(193.00, dir+0.30), obj_bullet3);
                                bullet_id.direction = bulletDirection1;
                                bullet_id.image_angle = bullet_id.direction;
                                alarm[0] = shot1_delay;
                                
                            }
                        break;
                        
                        case "standing" :
                            
                        break;                                         
                    }
                }
                else if (character == "hero3")
                {
                    switch (state)
                    {
                        case "firing" :
                            var bullet_id
                            if (alarm[0] <= 0)
                            {
                                bullet_id = instance_create (x+lengthdir_x(193.00, dir+0.30), y+lengthdir_y(193.00, dir+0.30), obj_bullet3);
                                bullet_id.direction = bulletDirection1;
                                bullet_id.image_angle = bullet_id.direction;
                                
                                bullet_id = instance_create (x+lengthdir_x(193.00, dir+0.30), y+lengthdir_y(193.00, dir+0.30), obj_bullet3);
                                bullet_id.direction = bulletDirection2;
                                bullet_id.image_angle = bullet_id.direction;
                                
                                bullet_id = instance_create (x+lengthdir_x(193.00, dir+0.30), y+lengthdir_y(193.00, dir+0.30), obj_bullet3);
                                bullet_id.direction = bulletDirection3;
                                bullet_id.image_angle = bullet_id.direction;
                                
                                bullet_id = instance_create (x+lengthdir_x(193.00, dir+0.30), y+lengthdir_y(193.00, dir+0.30), obj_bullet3);
                                bullet_id.direction = bulletDirection4;
                                bullet_id.image_angle = bullet_id.direction;
                                
                                bullet_id = instance_create (x+lengthdir_x(193.00, dir+0.30), y+lengthdir_y(193.00, dir+0.30), obj_bullet3);
                                bullet_id.direction = bulletDirection5;
                                bullet_id.image_angle = bullet_id.direction;
                               
                                alarm[0] = shot1_delay*3;
                                
                            }                        
                            
                        break;
                        
                        case "standing" :
                            
                        break;
                        
                        case "walking" :
                            
                        break;
                        
                        case "running" :
                            
                        break;                                         
                    }
                }
                 
                
            }
        }
        
    
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
       
}
