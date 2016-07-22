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
        //send back to player who sent this message
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
    break;
    
    case 2: // registration request
        var playerUsername = buffer_read(buffer, buffer_string);
        var pId = obj_server.playerIdCounter ;
        var map = "rm_world2";
        /*var pId = buffer_read(buffer, buffer_string);
        var response = 0;
        
        //check if player already exists
        */ini_open("users.ini");
        var playerExists = ini_read_string("user", string(pId), "false");
        if (playerExists == "false")
        {
            // register a new player
            ini_write_string("user", string(pId), playerUsername);      
            scr_showNotification ("A new player has registered");   
            with (obj_player)
                        {
                            if(playerIdentifier== pId)
                            {
                                playerName = playerUsername;
                            }
                       }        
        }
        if (playerExists != "false")
        {
            if (playerUsername == playerExists)
            {
                with (obj_player)
                {
                    if(playerIdentifier== pId)
                    {
                        playerName = playerUsername;
                    }
               } 
            }
        }
        
        response = 1;  
        ini_close();
              
        // send response to the client
        buffer_seek (global.bufferServer, buffer_seek_start, 0);
        buffer_write (global.bufferServer, buffer_u8, 2);
        buffer_write (global.bufferServer, buffer_u8, response);
        buffer_write (global.bufferServer, buffer_string, map);
        //send back to player who sent this message
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
        
    break;
    
    case 3: //Charge la prochaine room.
       /* var nextRoom = buffer_read (buffer, buffer_string);
        
        room_goto (nextRoom);
        
        if (room == nextRoom)
        {
            response = 1
            buffer_seek (global.bufferServer, buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, 3); 
            buffer_write (global.bufferServer, buffer_u8, response);
            network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
        }*/
   
        
    case 6 : //génère un pId et un pName ainsi que le storedPlayerSocket pour créer ou nous les remoteplayer chez les clients.
        var playerUsername = buffer_read (buffer, buffer_string);
        var pId = buffer_read (buffer, buffer_u32); 
        var roomId = buffer_read (buffer, buffer_u8); 
        var pName = "";
        
        
        with (obj_player)
        {
            if (playerIdentifier == pId)
            {
                playerInGame = !playerInGame;
                pName = playerName;
            }
        }
        
        // tell other players about this change
        
        for (var i = 0; i < ds_list_size(global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
            
            if (storedPlayerSocket != socket)
            {
                buffer_seek(global.bufferServer, buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 6);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_string, pName);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell(global.bufferServer));
             }
        }
        if (roomId!=0)
        {
        
            // tell me about other players
            for (var i = 0; i < ds_list_size(global.players); i++)
            { 
                var storedPlayerSocket = ds_list_find_value (global.players, i);
                
                if (storedPlayerSocket != socket)
                {
                    var player = noone;
                    
                    with (obj_player)
                    {
                        if ( self.playerSocket == storedPlayerSocket)
                        {
                            player = id;
                        }
                    }
                    if (player != noone)
                    {
                        if (player.playerInGame)
                        {
                            buffer_seek(global.bufferServer, buffer_seek_start, 0);
                            buffer_write (global.bufferServer, buffer_u8, 6);
                            buffer_write (global.bufferServer, buffer_u32, player.playerIdentifier);
                            buffer_write (global.bufferServer, buffer_string, player.playerName);
                            network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
                        }
                    }
                }
            }
        //tell other players about server
        
        buffer_seek(global.bufferServer, buffer_seek_start, 0);
        buffer_write (global.bufferServer, buffer_u8, 6);
        buffer_write (global.bufferServer, buffer_u32, global.playerId);
        buffer_write (global.bufferServer, buffer_string, global.playerPseudo);
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
      
        
        // tell server about other players
        //créer une instance de remotePlayer sur le server
        var instance = noone;
        
        with (obj_remotePlayer_server)
        {
            if (remotePlayerId == pId)
            {
                instance = id;
            }
        }
        
        if (instance == noone)
        {
            //only if we're in the gameworld
            if(instance_exists (obj_localPlayer_server))
            {
                //create a remote player
                var remotePlayer = instance_create(room_width/2, room_height/2, obj_remotePlayer_server);
                remotePlayer.remotePlayerId = pId
                remotePlayer.remotePlayerName = pName
            } 
        }
        else
        {
            with(instance)
            {
                instance_destroy();
            }
        }
            /*// tell this player about active NPC's
            for (var i = 0; i < instance_number(obj_npc); i++)
            {
                var npc = instance_find (obj_npc, i );
                buffer_seek(global.bufferServer, buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 10);
                buffer_write (global.bufferServer, buffer_u32, npc.npcId);
                buffer_write (global.bufferServer, buffer_f32, npc.xx);
                buffer_write (global.bufferServer, buffer_f32, npc.yy);
                buffer_write (global.bufferServer, buffer_u8, npc.npcType);
                network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
                
            }*/
        }
        
    break;
    
    case 7 : //player movement update request (x + y + sprite number + dir)
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteNumber = buffer_read(buffer, buffer_u8);
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
                buffer_write (global.bufferServer, buffer_u8, spriteNumber);
                buffer_write (global.bufferServer, buffer_u8, imageIndex);
                buffer_write (global.bufferServer, buffer_u32, dir);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }
        //tell other players about server's changes
         
        buffer_seek (global.bufferServer , buffer_seek_start, 0);
        buffer_write(global.bufferServer, buffer_u8, 7);
       // buffer_write(global.bufferServer, buffer_string, global.playerPseudo);
        buffer_write(global.bufferServer, buffer_u32, global.playerId);
        buffer_write(global.bufferServer, buffer_f32, obj_localPlayer_server.x);
        buffer_write(global.bufferServer, buffer_f32, obj_localPlayer_server.y);
        buffer_write(global.bufferServer, buffer_u8, obj_localPlayer_server.spriteNumber);
        buffer_write(global.bufferServer, buffer_u8, obj_localPlayer_server.image_index);
        buffer_write(global.bufferServer, buffer_u16, obj_localPlayer_server.dir);
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
                  
        //tell server about other players moves
        with (obj_remotePlayer_server)
        {
            if (remotePlayerId == pId)
            {
                x = xx;
                y = yy ;
                image_angle = dir
                
                switch (spriteNumber)
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
                }
                
                image_index = imageIndex;
                
                }
        }
    break;
    
    case 8 :  // chat
        var pId = buffer_read (buffer, buffer_u32);
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
                buffer_write (global.bufferServer, buffer_string, text);
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }  
        // tell server about player's chat
       
        with (obj_remotePlayer_server)
        {
            if (remotePlayerId == pId)
            {
                // create the chat objet to follow this remote player
                var chat = instance_create (x, y, obj_chat);
                chat.text = text;
                chat.owner = id;
            }
        }
        
        
        
    break;
    
    case 9 : // player state update
    
        var pId = buffer_read (buffer, buffer_u32);
        var state = buffer_read (buffer, buffer_string);
        var shot1_delay = buffer_read (buffer, buffer_u32);
        var bulletDirection = buffer_read (buffer, buffer_u32);
        
        
        //tell other player about this change
        for (var i = 0; i < ds_list_size (global.players); i++)
        {
            var storedPlayerSocket = ds_list_find_value (global.players, i);
            
            if (storedPlayerSocket != socket) // don't send a packet to the client we go this request from
             {
                buffer_seek (global.bufferServer ,buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 9);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_string, state);
                buffer_write (global.bufferServer, buffer_u32, shot1_delay);
                buffer_write (global.bufferServer, buffer_u32, bulletDirection);
                
                network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell (global.bufferServer));
             }
        }
        // tell other player about server's changes
        buffer_seek (global.bufferServer , buffer_seek_start, 0);
        buffer_write(global.bufferServer, buffer_u8, 9);
        buffer_write(global.bufferServer, buffer_u32, global.playerId);
        buffer_write(global.bufferServer, buffer_string, obj_localPlayer_server.state);
        buffer_write(global.bufferServer, buffer_u32, obj_localPlayer_server.shot1_delay);
        buffer_write(global.bufferServer, buffer_u32, obj_localPlayer_server.bulletDirection);
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
        
        // tell to server about state changes of other players
        with (obj_remotePlayer_server)
        {
            if (remotePlayerId == pId)
            {
                
                dir = image_angle;
                
                switch (state)
                {
                    case "firing" :
                        var bullet_id
                        if (alarm[0] <= 0)
                        {
                            bullet_id = instance_create (x+lengthdir_x(193.00, dir+0.30), y+lengthdir_y(193.00, dir+0.30), obj_bullet3);
                            bullet_id.direction = bulletDirection;
                            bullet_id.image_angle = bullet_id.direction;
                            alarm[0] = shot1_delay;
                            
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
        
    
    break;
    
  /*  case 10 : // create NPC for each room
    
        var roomId = buffer_read (buffer, buffer_u8); 
        
        if (roomId=1)
        {
            //instance_create(x, y, obj_npcForWorld2);
            scr_npcWorld2(2)
         
            // tell this player about active NPC's
            for (var i = 0; i < instance_number(obj_npc); i++)
            {
                var npc = instance_find (obj_npc, i );
                buffer_seek(global.bufferServer, buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, 10);
                buffer_write (global.bufferServer, buffer_u32, npc.npcId);
                buffer_write (global.bufferServer, buffer_f32, npc.xx);
                buffer_write (global.bufferServer, buffer_f32, npc.yy);
                buffer_write (global.bufferServer, buffer_u8, npc.npcType);
                buffer_write (global.bufferServer, buffer_u16, npc.dir);
                buffer_write (global.bufferServer, buffer_u8, npc.spd);
                network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
                
            }
        }
    break;
    
    case 11 : // update the coordinates of the NPC
        var npcId = buffer_read (buffer, buffer_u32);
        var tempx = buffer_read (buffer, buffer_f32);
        var tempy = buffer_read (buffer, buffer_f32);
        var tempdir = buffer_read(buffer, buffer_u16);
        
        with (scr_npcWorld2)
        {
            if (obj_npc.npcId == obj_server.npcIdCounter)
                {
                    obj_npc.xx = tempx;
                    obj_npc.yy = tempy;
                    obj_npc.dir = tempdir;
                    /*if (roomId=1)
                     {
                        scr_npcWorld2(2);
                         //tell other player about this change
                        for (var i = 0; i < ds_list_size (global.players); i++)
                        {
                            var storedPlayerSocket = ds_list_find_value (global.players, i);
                            
                            if (storedPlayerSocket != socket) // don't send a packet to the client we go this request from
                             {
                                buffer_seek(global.bufferServer, buffer_seek_start, 0);
                                buffer_write (global.bufferServer, buffer_u8, 10);
                                buffer_write (global.bufferServer, buffer_u32, npc.npcId);
                                buffer_write (global.bufferServer, buffer_f32, npc.xx);
                                buffer_write (global.bufferServer, buffer_f32, npc.yy);
                                buffer_write (global.bufferServer, buffer_u8, npc.npcType);
                                buffer_write (global.bufferServer, buffer_u16, npc.dir);
                                buffer_write (global.bufferServer, buffer_u8, npc.spd);
                                network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
                             }
                        }
                    }
                }
        }*/
       
       
        break;
       
}
