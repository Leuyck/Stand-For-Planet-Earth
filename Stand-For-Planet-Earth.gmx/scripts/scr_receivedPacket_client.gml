///client script : ReceivedPacket

var buffer = argument[0];
var msgid = buffer_read (buffer, buffer_u8);

switch (msgid) 
{
    case PING_MESSAGE :
        var time = buffer_read (buffer, buffer_u32);
        ping = current_time - time;
        break;
        
    case C_PLAYER_INFORMATION_MESSAGE :  // reçoit son id de player
        global.playerId = buffer_read (buffer, buffer_u32);
        global.playerNumber = buffer_read (buffer, buffer_u8);
        show_debug_message ("* Client received packet : Id received : " + string(global.playerId));
         
        buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
        buffer_write(global.bufferNetwork, buffer_u8, S_PLAYER_REGISTER_MESSAGE);
        buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
        buffer_write(global.bufferNetwork, buffer_string, global.playerPseudo);
        network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
        
        break;
    
    case C_MAP_CHOOSEN_MESSAGE :
        global.map = buffer_read(buffer, buffer_string);
        if (global.map != "") {
            scr_transitionMapTo(rm_choseHero);
        }
        else {
            scr_transitionMapTo(rm_waitingMap);
        }
        break;
    
    case C_PLAYER_DISCONNECTED_MESSAGE : // reçoit le playerLeavingId pour détruire ou non le player
        var pId = buffer_read (buffer, buffer_u32);
        if (global.inWorld == true)
        {
            with (obj_remotePlayer)
            {
               if (self.remotePlayerId == pId)
               {
                   instance_destroy();
               }
            }
        }
        if (room == rm_choseHero)
        {
            with (obj_btn_scrollHero_remote)
            {
               if (self.remoteButtonId == pId)
               {
                   instance_destroy();
               }
            }
        }
        break;
    
    case C_NEW_PLAYER_ENTERED_MAP_MESSAGE : // créer le localPlayer aux positions données par le server.
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var playerCharacter = buffer_read (buffer, buffer_string);
        var xpos = buffer_read (buffer, buffer_f32);
        var ypos = buffer_read (buffer, buffer_f32);
        
        if (global.inWorld == true)
        {
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
        }
        break;
    
    case C_PLAYER_COORDINATES_UPDATED_MESSAGE : // player movement update response
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteIndex= buffer_read (buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var dir = buffer_read (buffer, buffer_f32);
        
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
    
    case C_CHAT_MESSAGE_RECEIVED_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var text = buffer_read (buffer, buffer_string);
        
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                scr_createAndMoveChat(text, pName, obj_remotePlayer)
            }
        }
        break;
    
    case C_CREATE_BULLET_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var bulletDirection = buffer_read (buffer, buffer_f32);
        var bulletx = buffer_read (buffer, buffer_f32);
        var bullety = buffer_read (buffer, buffer_f32);
     
        bullet_id = instance_create (bulletx, bullety, obj_bullet3);
        bullet_id.direction = bulletDirection;
        bullet_id.image_angle = bullet_id.direction;
          
        break;
    
    case C_NPC_MOVE_MESSAGE:
        var npcId = buffer_read(buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var npcType = buffer_read(buffer, buffer_u8);
        var dir = buffer_read(buffer, buffer_f32);
        var spd = buffer_read(buffer, buffer_u8);
        var spriteIndex = buffer_read (buffer, buffer_u8);
        var imageIndex = buffer_read (buffer, buffer_u8);
            
        if (global.inWorld == true)
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
                if(instance_exists (obj_localPlayer))
                {
                    //create a remote player
                    var remoteNpc = instance_create(xx, yy, obj_remoteNpc1);
                    remoteNpc.remoteNpcId = npcId;
                    remoteNpc.direction = dir;
                    remoteNpc.image_angle = remoteNpc.direction;
                    remoteNpc.speed = spd;
                    remoteNpc.sprite_index = spriteIndex
                    remoteNpc.image_index = imageIndex;  
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
                instance.sprite_index = spriteIndex
                instance.image_index = imageIndex;       
            }
        }
        break;
    
    case C_NPC_LIFE_CHANGED_MESSAGE:
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
    
    case C_PRESS_BUTTON_MESSAGE:
        var buttonId = buffer_read (buffer, buffer_u8);
        with (obj_button)
        {
           if (self.buttonId == buttonId)
           {
               scr_pressButton(id);
           }
        }
        break;
    
    case C_PLAYER_CONNECTED_TO_CHOOSE_HERO_MENU_MESSAGE :
        var pId = buffer_read (buffer, buffer_u32);
        var playerNumber = buffer_read (buffer, buffer_u8);
        
        var xpos = 512
        var ypos = 170 + (playerNumber - 2) * 94
                
        if (room == rm_choseHero)
        {
            if (global.playerId == pId)
            {       
                instance_create(xpos, ypos, obj_btn_scrollHero);
            }
            else
            {
                //create a remote button
                var remoteButton = instance_create(xpos,ypos, obj_btn_scrollHero_remote);
                remoteButton.remoteButtonId = pId;
            }
        }
        break;
        
    case C_PLAYER_CHANGE_CHARACTER_IN_CHOOSE_HERO_MENU_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        
        with (obj_btn_scrollHero_remote)
        {
            if (remoteButtonId == pId)
            {
                image_index = imageIndex;             
            }
        }
        break;
}

