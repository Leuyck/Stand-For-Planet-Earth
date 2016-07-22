///client script : ReceivedPacket

var buffer = argument[0];
var msgid = buffer_read (buffer, buffer_u8);

switch (msgid) {
    case 1 :
        var time = buffer_read (buffer, buffer_u32);
        ping = current_time - time;
    break;
    
    case 2 :
        var response = buffer_read(buffer, buffer_u8);
        global.map = buffer_read(buffer, buffer_string);
        
        switch (response)
        {
            case 0 : // failure
                scr_showNotification ("Connection failure!")
            break;
            
            case 1: //success passe a la room go avec la transition
            if !instance_exists (obj_roomTransition)
            {
                var tempRoomFade;
                tempRoomFade = instance_create (x, y ,obj_roomTransition);
                tempRoomFade.tempTarget = rm_go;
            }
            with (obj_roomTransition)
            {
                fadeAlpha = clamp (fadeAlpha + ( fadeState * fadeSpeed), 0, 1);
                if (fadeAlpha == 1) 
                {
                    room_goto(tempTarget);
                    fadeState = -1;
                }
                
                if ((fadeAlpha == 0) && (fadeState == -1))
                {
                    instance_destroy();
                }
                draw_set_color (c_white);
                draw_set_alpha (fadeAlpha);
                draw_rectangle(view_xview, view_yview, view_xview+view_wview, view_yview+view_hview,0)
                draw_set_alpha(1)
            }
            
                //room_goto(rm_go);
            break;
        }
    break;
    
    case 3: //create server's player
        var playerName = buffer_read (buffer, buffer_string);
        var pId = buffer_read (buffer, buffer_u32);        
        
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

    break;
    
    case 4 :  // reçoit le playerIdcounter
         global.playerId = buffer_read (buffer, buffer_u32);
         //scr_showNotification ("Our playerId has been seen")
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
    
    case 6 : // génère ou non les remotePlayers en fonction du storedPlayerSocket reçu
         var pId = buffer_read (buffer, buffer_u32);
         var pName = buffer_read (buffer, buffer_string);
    
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
                }
                
                image_index = imageIndex;
                
                }
        }
    break;
    
    case 8:
        var pId = buffer_read (buffer, buffer_u32);
        var text = buffer_read (buffer, buffer_string);
        
        with (obj_remotePlayer)
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
    
    case 9 :
    
        var pId = buffer_read (buffer, buffer_u32);
        var state = buffer_read (buffer, buffer_string);
        var shot1_delay = buffer_read (buffer, buffer_u32);
        var bulletDirection = buffer_read (buffer, buffer_u32);
                
        with (obj_remotePlayer)
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
    
    case 10:    //create the npc
    
        if (room = rm_world2)
        {
            var npcId = buffer_read(buffer, buffer_u32);
            var xx = buffer_read (buffer, buffer_f32);
            var yy = buffer_read (buffer, buffer_f32);
            var npcType = buffer_read(buffer, buffer_u8);
            var dir =buffer_read(buffer, buffer_u16);
            var spd =buffer_read(buffer, buffer_u8);
            
            var npc = instance_create (xx, yy, obj_npc);
            npc.npcId = npcId;
            npc.spd = spd;
            npc.dir = dir;
            
            switch (npcType)
            {
                case 0 :
                npc.sprite_index = spr_npc1_stand;
                break;
                
                case 1:
                npc.sprite_index = spr_npc2_stand;
                break;
            }
            
            
        }
        
    break;
//case statements go here
}

