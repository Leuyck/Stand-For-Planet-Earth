///client script : ReceivedPacket

var buffer = argument[0];
var msgid = buffer_read (buffer, buffer_u8);

switch (msgid) 
{
    case 1 :
        var time = buffer_read (buffer, buffer_u32);
        ping = current_time - time;
        break;
    
    case 2 :
        global.map = buffer_read(buffer, buffer_string);
        
        if (global.map!="")//si global.map est definie
        {
            scr_transitionMapTo(rm_choseHero);
        }
        else
        {
            scr_transitionMapTo(rm_waitingMap);
        }
        break;
    
    case 4 :  // reçoit son id de player
        global.playerId = buffer_read (buffer, buffer_u32);
         
        buffer_seek(global.bufferNetwork, buffer_seek_start, 0);
        buffer_write (global.bufferNetwork, buffer_u8, 2);
        buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
        buffer_write (global.bufferNetwork, buffer_string, global.playerPseudo);
        network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
    break;
    
    case 5 : // reçoit le playerLeavingId pour détruire ou non le player
         var pId = buffer_read (buffer, buffer_u32);
         with (obj_remotePlayer)
         {
            if (remotePlayerId == pId)
            {
                instance_destroy();
            }
         }
         
    break;
    
    case 6 : // créer le localPlayer aux positions données par le server.
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var playerCharacter = buffer_read (buffer, buffer_string);
        var xpos = buffer_read (buffer, buffer_f32);
        var ypos = buffer_read (buffer, buffer_f32);
        
        if (global.playerId == pId)
        {       
            instance_create(xpos, ypos, obj_localPlayer);
        }
        else
        {
            //create a remote player
            var remotePlayer = instance_create(xpos,ypos, obj_remotePlayer);
            remotePlayer.remotePlayerId = pId;
            remotePlayer.remotePlayerName = pName;
            remotePlayer.remotePlayerCharacter = playerCharacter;
        }
            
         
         
         
         
         
         
         
         
         /*var pId = buffer_read (buffer, buffer_u32);
         var pName = buffer_read (buffer, buffer_string);
        
         if (room == rm_world1 || room == rm_world2)
         {
      
            var instance = noone;
            
            with (obj_remotePlayer)
            {
                if (remotePlayerId == pId)
                {
                    instance = id;
                }
            }
            
            if (instance == noone)
            {
                //only if we're in the gameworld
                if(instance_exists (obj_localPlayer))
                {
                    //create a remote player
                    var remotePlayer = instance_create(room_width/2, room_height/2, obj_remotePlayer);
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
        }*/
        
   
    break;
    
    case 7 : // player movement update response
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteNumber = buffer_read (buffer, buffer_u8);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var dir = buffer_read (buffer, buffer_u16);
        
        with (obj_remotePlayer)
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
                }
                
                image_index = imageIndex;
                
            }
        }
    break;
    
    case 8: //chat
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var text = buffer_read (buffer, buffer_string);
        
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                // create the chat 
                if (instance_exists (obj_chat))//décale le chat déjà existant
                {
                    with (obj_chat)
                    {
                        y -=20
                    }
                }
                var chat = instance_create (x, y, obj_chat);// crée le chat.
                chat.text = text;
                chat.playerTalking = pName;
                chat.owner = id;
            }
        }
    
    
    
    break;
    
    case 9 : //changes about states of players (server + other players)
    
        var pId = buffer_read (buffer, buffer_u32);
        var character = buffer_read (buffer, buffer_string);
        var state = buffer_read (buffer, buffer_string);
        var shot1_delay = buffer_read (buffer, buffer_u32);
        var bulletDirection1 = buffer_read (buffer, buffer_u32);
        var bulletDirection2 = buffer_read (buffer, buffer_u32);
        var bulletDirection3 = buffer_read (buffer, buffer_u32);
        var bulletDirection4 = buffer_read (buffer, buffer_u32);
        var bulletDirection5 = buffer_read (buffer, buffer_u32);
                
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
                        
                        case "walking" :
                            
                        break;
                        
                        case "running" :
                            
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
    
    case 10:    //create the npc
    
        
        
            var npcId = buffer_read(buffer, buffer_u32);
            var xx = buffer_read (buffer, buffer_f32);
            var yy = buffer_read (buffer, buffer_f32);
            var npcType = buffer_read(buffer, buffer_u8);
            var dir = buffer_read(buffer, buffer_u16);
            var spd = buffer_read(buffer, buffer_u8);
            var spriteNumber = buffer_read (buffer, buffer_u8);
            var imageIndex = buffer_read (buffer, buffer_u8);
                
             if (room == rm_world1)
             {
          
                var instance = noone;
                
                with (obj_remoteNpc1)
                {
                    if (remoteNpcId == npcId)
                    {
                        instance = id;
                    }
                }
                
                if (instance == noone)
                {
                    //only if we're in the gameworld
                    if(instance_exists (obj_localPlayer))
                    {
                        //create a remote player
                        var remoteNpc = instance_create(xx, yy, obj_remoteNpc1);
                        remoteNpc.remoteNpcId = npcId;
                        remoteNpc.direction = dir;
                        remoteNpc.speed = spd;
                        remoteNpc.npcType= npcType;
                    } 
                }
                else
                {
                    instance.x = xx;
                    instance.y = yy;
                    instance.direction = dir;
                    instance.image_angle = instance.direction;
                    instance.speed = spd;
                    
                        switch (spriteNumber)
                    {
                        case 1 :
                            instance.sprite_index = spr_npc1_stand
                        break;
                        
                        case 2 :
                            instance.sprite_index = spr_npc1_move
                        break;                                
                    }
                    
                    instance.image_index = imageIndex;
                    
                    }    
                         
                }
            
            
            /*switch (npcType)
            {
                case 0 :
                npc.sprite_index = spr_npc1_stand;
                break;
                
                case 1:
                npc.sprite_index = spr_npc2_stand;
                break;
            }
            */
            
        
        
    break;
    
    case 11 : //npc's life
        var npcId = buffer_read(buffer, buffer_u32);
        var npcHealth = buffer_read (buffer, buffer_u32);
    
        with (obj_remoteNpc1)
        {
            if (remoteNpcId == npcId)
            {
                if (npcHealth <= 0)
                {
                    instance_destroy();
                }   
            }
        }    
    break;
    
    case 12 : //door statement
        
    var doorId = buffer_read(buffer, buffer_u8);
    var imageIndex = buffer_read(buffer, buffer_u32);
    if (room=rm_world1 || room=rm_world2)
    {
        with(obj_door)
        {
            if (self.doorId == doorId)
            {
                self.image_index = imageIndex
            }
        }
    }
    
    break;
//case statements go here
}

