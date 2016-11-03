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
         
        buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
        buffer_write(global.bufferNetwork, buffer_u8, S_PLAYER_REGISTER_MESSAGE);
        buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
        buffer_write(global.bufferNetwork, buffer_string, global.playerPseudo);
        network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
        
        break;
    
    case C_GO_TO_ROOM_MESSAGE :
        var mapName = buffer_read(buffer, buffer_string);
        var map = asset_get_index(mapName);
        scr_transitionMapTo(map);
        break;
    
    case C_PLAYER_DISCONNECTED_MESSAGE : // reçoit le playerLeavingId pour détruire ou non le player
        var pId = buffer_read (buffer, buffer_u32);
        if (global.inWorld == true)
        {
            with (obj_localPlayer)
            {
               if (self.playerId == pId)
               {
                   instance_destroy();
               }
            }
        }
        if (room == rm_choseHero)
        {
            with (obj_btn_scrollHero)
            {
               if (self.buttonId == pId)
               {
                   instance_destroy();
               }
            }
        }
        break;
        
    case C_SERVER_DISCONNECTED_MESSAGE :
        if(global.inWorld == true)
        {
            with(obj_localPlayer)
            {
                instance_destroy();
            }
        }
        scr_closeConnectionToServer();
        scr_transitionMapTo(rm_mainMenu);
        break;
    
    case C_NEW_PLAYER_ENTERED_MAP_MESSAGE : // créer le localPlayer aux positions données par le server.
        var pId = buffer_read (buffer, buffer_u32);
        var playerNumber = buffer_read (buffer, buffer_u8); 
        var pName = buffer_read (buffer, buffer_string);
        var playerCharacter = buffer_read (buffer, buffer_string);
        if (global.inWorld == true)
        {
            spawn = scr_getHeroSpawn(playerNumber);
            
            with(obj_localPlayer)
            {
                if (self.playerId == pId)
                {
                    instance_destroy()
                }   
            }
            
            var localPlayerType = scr_getLocaPlayerType(playerCharacter);
            var localPlayer = instance_create(spawn.x, spawn.y, localPlayerType);
            localPlayer.playerId = pId
            localPlayer.playerName = pName
            localPlayer.playerCharacter = playerCharacter
            
            healthBar = scr_createHealthBar(playerNumber);
            healthBar.hero = localPlayer;
        }
        break;
    
    case C_PLAYER_COORDINATES_UPDATED_MESSAGE : // player movement update response
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteIndex= buffer_read (buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var imageAngle = buffer_read (buffer, buffer_f32);
        var dir = buffer_read (buffer, buffer_f32);
        var currentHealth = buffer_read (buffer, buffer_u32);
        var currentEnergy = buffer_read (buffer, buffer_u32);
        var currentMaxEnergy = buffer_read (buffer, buffer_u32);
        
        with (obj_localPlayer)
        {
            if (playerId == pId)
            {
                self.x = xx;
                self.y = yy ;
                self.image_angle = imageAngle;
                self.direction = dir;
                self.sprite_index = spriteIndex;
                self.image_index = imageIndex; 
                self.currentHealth = currentHealth;
                self.currentEnergy = currentEnergy;  
                self.currentMaxEnergy = currentMaxEnergy;                    
            }
        }
        break;
    
    case C_CHAT_MESSAGE_RECEIVED_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var text = buffer_read (buffer, buffer_string);
        
        with (obj_localPlayer)
        {
            if (playerId == pId)
            {
                scr_createAndMoveChat(text, pName, obj_localPlayer)
            }
        }
        break;
    
    case C_CREATE_BULLET_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var bulletType = buffer_read(buffer, buffer_string);
        var bulletDirection = buffer_read (buffer, buffer_f32);
        var bulletx = buffer_read (buffer, buffer_f32);
        var bullety = buffer_read (buffer, buffer_f32);
        var owner = buffer_read (buffer, buffer_string);
     
        bullet_id = instance_create (bulletx, bullety, asset_get_index(bulletType));
        bullet_id.direction = bulletDirection;
        bullet_id.image_angle = bullet_id.direction;
        bullet_id.owner = owner;
          
        break;
    
    case C_NPC_MOVE_MESSAGE:
        var npcId = buffer_read(buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var npcType = buffer_read(buffer, buffer_string);
        var dir = buffer_read(buffer, buffer_f32);
        var spd = buffer_read(buffer, buffer_u8);
        var spriteIndex = buffer_read (buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        
        if(!instance_exists(obj_server))
        {
            if (global.inWorld == true)
            {
                var instance = noone;
                
                with (obj_localNpc)
                {
                    if (self.npcId == npcId)
                    {
                        instance = id;
                    }
                }
                
                if (instance == noone)
                {
                    if(instance_exists (obj_localPlayer))
                    {
                        var npcTypeInstance = scr_getNpcType(npcType);
                        var npc = instance_create(xx, yy, obj_localNpc);
                        npc.npcId = npcId;
                        npc.direction = dir;
                        npc.speed = spd;
                        npc.sprite_index = spriteIndex
                        npc.image_index = imageIndex;
                    } 
                }
                else
                {
                    instance.x = xx;
                    instance.y = yy;
                    instance.direction = dir;
                    instance.speed = spd;
                    instance.sprite_index = spriteIndex
                    instance.image_index = imageIndex;       
                }
            }
        }
        break;
    
    case C_NPC_LIFE_CHANGED_MESSAGE:
        var npcId = buffer_read(buffer, buffer_u32);
        var newHealth = buffer_read (buffer, buffer_u32);
    
        with (obj_localNpc)
        {
            if (self.npcId == npcId)
            {
                self.currentHealth = newHealth;
                if (self.currentHealth <= 0)
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
        var playerCharacter = buffer_read (buffer, buffer_string);
        
        if (room == rm_choseHero)
        {
            var scrollHero = scr_createScrollButton(playerNumber);
            scrollHero.buttonId = pId;
            scr_setImageIndexToScrollHero(scrollHero, playerCharacter);
        }
        break;
        
    case C_CHOOSE_HERO_MENU_INFORMATION_MESSAGE:
        var chosenMap = buffer_read (buffer, buffer_string);
        var isGoButtonEnabled = buffer_read (buffer, buffer_bool);

        if (room == rm_choseHero) {
            obj_btn_start.visible = isGoButtonEnabled;
            obj_chose_hero_information.currentMap = chosenMap;
        }
        break;
        
    case C_PLAYER_CHANGE_CHARACTER_IN_CHOOSE_HERO_MENU_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var playerCharacter = buffer_read (buffer, buffer_string);
        
        with (obj_btn_scrollHero)
        {
            if (self.buttonId == pId)
            {
                scr_setImageIndexToScrollHero(id, playerCharacter); 
            }
        }
        break;

    case C_HEROS_LINKED:
        var originPlayerId = buffer_read (buffer, buffer_u8);
        var targetPlayerId = buffer_read (buffer, buffer_u8);
        if (global.inWorld == true)
        {
            var originLocalPlayer = scr_getLocalPlayerFromId(originPlayerId);
            var targetLocalPlayer = scr_getLocalPlayerFromId(targetPlayerId);
            if(originLocalPlayer != noone && targetLocalPlayer != noone)
            {
                originLocalPlayer.linkTarget = targetLocalPlayer;
                ds_list_add(targetLocalPlayer.linkedHeros, originLocalPlayer);
            }
        }
        break;
        
    case C_HEROS_UNLINKED:
        var originPlayerId = buffer_read (buffer, buffer_u8);
        var targetPlayerId = buffer_read (buffer, buffer_u8);
        if (global.inWorld == true)
        {
            var originLocalPlayer = scr_getLocalPlayerFromId(originPlayerId);
            var targetLocalPlayer = scr_getLocalPlayerFromId(targetPlayerId);
            if(originLocalPlayer != noone && targetLocalPlayer != noone)
            {
                originLocalPlayer.linkTarget = noone;
                ds_list_delete(targetLocalPlayer.linkedHeros, ds_list_find_index(targetLocalPlayer.linkedHeros, originLocalPlayer));
            }
        }
        break;
        
    case C_TURRET_COORDINATES_UPDATED_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var deploy = buffer_read (buffer, buffer_bool);
        var dir = buffer_read (buffer, buffer_f32);
        var currentHealth = buffer_read (buffer, buffer_u32);
        
        if (!instance_exists(obj_turret_hero3))
        {
            turret = instance_create (xx, yy, obj_turret_hero3);
            turret.turretId = pId
            turret.deploy = deploy
            turret.direction = dir;
            turret.currentHealth = currentHealth;
        }
        else
        {
            with (obj_turret_hero3)
            {
                if (self.turretId == pId)
                {
                    self.x = xx;
                    self.y = yy ;
                    self.direction = dir;
                    self.deploy = deploy
                    self.currentHealth = currentHealth;                   
                }
            }    
        }
    
        break;
    
}

