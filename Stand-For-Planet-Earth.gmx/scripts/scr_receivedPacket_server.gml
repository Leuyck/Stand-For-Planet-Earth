/// server script : receivedPacket

var buffer = argument[0]
var socket = argument[1]
var msgid = buffer_read (buffer, buffer_u8);

switch (msgid) {
        
    case PING_MESSAGE:
        var time = buffer_read (buffer, buffer_u32);
        
        buffer_seek (global.bufferServer, buffer_seek_start, 0);
        buffer_write (global.bufferServer, buffer_u8, PING_MESSAGE);
        buffer_write (global.bufferServer, buffer_u32, time);
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
        
        break;
    
    case S_PLAYER_REGISTER_MESSAGE:
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
        
        // player that is hosting the game
        if (pId == global.playerId) {
            scr_askPlayerToGoToRoom(socket, rm_choseMap);
        }
        else {
            scr_askPlayerToGoToRoom(socket, rm_choseHero);
        }
        break;
        
    case S_PLAYER_REQUESTS_TO_ENTER_MAP_MESSAGE : // Connexion d'un joueur sur la map
        var pId = buffer_read (buffer, buffer_u32); 
        
        // We find who just entered the map.
        var playerEnteredMap = scr_getPlayerFromId(pId);
        
        // Define position to popup the hero, depends on the map and the character.
        var position = scr_getHeroStartupPosition(playerEnteredMap.playerCharacter, room);
        
        // We indicate that the player is now in game.
        playerEnteredMap.playerInGame = true;
        
        // Tell all players about this new player, and
        // all current players to the new one.
        with(obj_player)
        {
            scr_sendPlayerInfoToClient(self.playerSocket, playerEnteredMap.playerIdentifier, playerEnteredMap.playerName, playerEnteredMap.playerCharacter, position.xValue, position.yValue);
            
            if (self.playerIdentifier != pId)
            {
                // We send x=0 & y=0 to other players.
                // That is not really important, because, the player will received packet
                // to update the player coordinates.
                scr_sendPlayerInfoToClient(socket, self.playerIdentifier, self.playerName, self.playerCharacter, 0, 0)
            }
        }
        break;
    
    case S_PLAYER_COORDINATES_UPDATED_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteIndex = buffer_read(buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var dir = buffer_read(buffer, buffer_f32);
        
        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
               buffer_seek (global.bufferServer ,buffer_seek_start, 0);
               buffer_write (global.bufferServer, buffer_u8, C_PLAYER_COORDINATES_UPDATED_MESSAGE);
               buffer_write (global.bufferServer, buffer_u32, pId);
               buffer_write (global.bufferServer, buffer_f32, xx);
               buffer_write (global.bufferServer, buffer_f32, yy);
               buffer_write (global.bufferServer, buffer_u32, spriteIndex);
               buffer_write (global.bufferServer, buffer_u8, imageIndex);
               buffer_write (global.bufferServer, buffer_f32, dir);
               network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }
        }
        break;
    
    case S_BROADCAST_CHAT_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var text = buffer_read (buffer, buffer_string);
        
        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
               buffer_seek (global.bufferServer ,buffer_seek_start, 0);
               buffer_write (global.bufferServer, buffer_u8, C_CHAT_MESSAGE_RECEIVED_MESSAGE);
               buffer_write (global.bufferServer, buffer_u32, pId);
               buffer_write (global.bufferServer, buffer_string, pName);
               buffer_write (global.bufferServer, buffer_string, text);
               network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }
        }
        break;
    
    case S_BROADCAST_BULLET_CREATION_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var bulletType = buffer_read(buffer, buffer_string);
        var bulletDirection = buffer_read (buffer, buffer_f32);
        var bulletx = buffer_read (buffer, buffer_f32);
        var bullety = buffer_read (buffer, buffer_f32);
        var owner = buffer_read (buffer, buffer_string);

        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
               buffer_seek (global.bufferServer , buffer_seek_start, 0);
               buffer_write(global.bufferServer, buffer_u8, C_CREATE_BULLET_MESSAGE);
               buffer_write(global.bufferServer, buffer_u32, pId);
               buffer_write(global.bufferServer, buffer_string, bulletType);
               buffer_write(global.bufferServer, buffer_f32, bulletDirection);
               buffer_write(global.bufferServer, buffer_f32, bulletx);
               buffer_write(global.bufferServer, buffer_f32, bullety);
               buffer_write(global.bufferServer, buffer_string, owner);
               network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
            }
        }
        break;

    case S_BROADCAST_PRESS_BUTTON_MESSAGE:
        var buttonId = buffer_read (buffer, buffer_u8);
        with (obj_player)
        {
            buffer_seek (global.bufferServer , buffer_seek_start, 0);
            buffer_write(global.bufferServer, buffer_u8, C_PRESS_BUTTON_MESSAGE);
            buffer_write(global.bufferServer, buffer_u8, buttonId);
            network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
        }
        break;
    
    case S_BROADCAST_PLAYER_ENTERED_CHOOSE_HERO_MENU_MESSAGE:
        var pId =  buffer_read (buffer, buffer_u32);
        var playerNumber = 0;
        var playerCharacter;
        
        with (obj_player)
        {
            if (self.playerIdentifier == pId)
            {
                playerNumber = self.playerNumber;
                playerCharacter = self.playerCharacter;
            }
        }
        
        // tell all players about this new player      
        with(obj_player)
        {
            buffer_seek (global.bufferServer, buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, C_PLAYER_CONNECTED_TO_CHOOSE_HERO_MENU_MESSAGE);
            buffer_write (global.bufferServer, buffer_u32, pId);
            buffer_write (global.bufferServer, buffer_u8, playerNumber);
            buffer_write (global.bufferServer, buffer_string, playerCharacter);
            network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));       
        }

        // tell me (client who is actually sending) about other player states
        with (obj_player)
        {
            if (self.playerIdentifier != pId)
            {
                buffer_seek(global.bufferServer, buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, C_PLAYER_CONNECTED_TO_CHOOSE_HERO_MENU_MESSAGE);
                buffer_write (global.bufferServer, buffer_u32, self.playerIdentifier);
                buffer_write (global.bufferServer, buffer_u8, self.playerNumber);
                buffer_write (global.bufferServer, buffer_string, self.playerCharacter);
                network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
            }
        }
        
        // tell me (client who is actually sending) the information about the choose hero menu.
        buffer_seek(global.bufferServer, buffer_seek_start, 0);
        buffer_write (global.bufferServer, buffer_u8, C_CHOOSE_HERO_MENU_INFORMATION_MESSAGE);
        buffer_write (global.bufferServer, buffer_string, global.map);
        buffer_write (global.bufferServer, buffer_bool, global.playerId == pId || global.inWorld);
        network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
        
        break;
            
    case S_BROADCAST_PLAYER_CHANGE_CHARACTER_IN_CHOOSE_HERO_MENU_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var playerCharacter = buffer_read (buffer, buffer_string);
        
        with (obj_player)
        {
            if (self.playerIdentifier == pId)
            {
                self.playerCharacter = playerCharacter;
            }
        }
        
        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
                buffer_seek (global.bufferServer,  buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, C_PLAYER_CHANGE_CHARACTER_IN_CHOOSE_HERO_MENU_MESSAGE);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_string, playerCharacter);
                network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }
        }
        break;
    
    case S_PLAYER_HEALTHBAR_CREATION_MESSAGE :
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        
        // We find who just entered the map.
        var playerEnteredMap = scr_getPlayerFromId(pId);

        // Tell all players about this new player, and
        // all current players to the new one.
        with(obj_player)
        {
            buffer_seek (global.bufferServer,  buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, C_CREATE_PLAYER_HEALTHBAR);
            buffer_write (global.bufferServer, buffer_u32, pId);
            buffer_write (global.bufferServer, buffer_f32, xx);
            buffer_write (global.bufferServer, buffer_f32, yy);
            network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            
            /*if (self.playerIdentifier != pId)
            {
                // We send x=0 & y=0 to other players.
                // That is not really important, because, the player will received packet
                // to update the player coordinates.
                buffer_seek (global.bufferServer,  buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, C_CREATE_PLAYER_HEALTHBAR);
                buffer_write (global.bufferServer, buffer_u32, self.playerIdentifier);
                buffer_write (global.bufferServer, buffer_f32, 0);
                buffer_write (global.bufferServer, buffer_f32, 0);
                network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }*/
        }
        break;
        
    case S_BROADCAST_PLAYER_HEALTHBAR_MESSAGE :
        var pId = buffer_read (buffer, buffer_u32);
        var healthSize = buffer_read (buffer, buffer_u8);
        
        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
                buffer_seek (global.bufferServer,  buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, C_PLAYER_HEALTHBAR_UPDATED_MESSAGE);
                buffer_write (global.bufferServer, buffer_u32, pId);
                buffer_write (global.bufferServer, buffer_u8, healthSize);
                network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }
        }
        break;
        
    
}
