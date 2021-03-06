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
            }
        }

        scr_askPlayerToGoToRoom(socket, rm_choseHero);
        
        if(global.playerId != pId)
        {
            scr_showNotification (playerUsername +" has connected", c_blue);
        }
        
        break;
        
    case S_PLAYER_REQUESTS_TO_ENTER_MAP_MESSAGE : // Connexion d'un joueur sur la map
        var pId = buffer_read (buffer, buffer_u32); 
        
        // We find who just entered the map.
        var playerEnteredMap = scr_getPlayerFromId(pId);
                
        // We indicate that the player is now in game.
        if(playerEnteredMap.playerInGame == false)
        {
            playerEnteredMap.playerInGame = true;
            // Tell all players about this new player, and
            // all current players to the new one.
            with(obj_player)
            {
                scr_sendPlayerInfoToClient(C_NEW_PLAYER_ENTERED_MAP_MESSAGE, self.playerSocket, playerEnteredMap.playerIdentifier, playerEnteredMap.playerNumber, playerEnteredMap.playerName, playerEnteredMap.playerCharacter);
                
                if (self.playerIdentifier != pId)
                {
                    // We send x=0 & y=0 to other players.
                    // That is not really important, because, the player will received packet
                    // to update the player coordinates.
                    scr_sendPlayerInfoToClient(C_NEW_PLAYER_ENTERED_MAP_MESSAGE, socket, self.playerIdentifier, self.playerNumber, self.playerName, self.playerCharacter)
                }
            }
        }
        else
        {
            with(obj_player)
            {
                if(self.playerIdentifier == pId)
                {
                    scr_sendPlayerInfoToClient(C_PLAYER_ENTERED_MAP_MESSAGE, self.playerSocket, playerEnteredMap.playerIdentifier, playerEnteredMap.playerNumber, playerEnteredMap.playerName, playerEnteredMap.playerCharacter);
                }
            }
        }
        
        break;
    
    case S_PLAYER_COORDINATES_UPDATED_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteIndex = buffer_read(buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var imageAngle = buffer_read(buffer, buffer_f32);
        var dir = buffer_read(buffer, buffer_f32);
        var state = buffer_read(buffer, buffer_string)
        var currentHealth = buffer_read (buffer, buffer_u32);
        var currentEnergy = buffer_read (buffer, buffer_u32);
        var currentMaxEnergy = buffer_read (buffer, buffer_u32);
        
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
               buffer_write (global.bufferServer, buffer_f32, imageAngle);
               buffer_write (global.bufferServer, buffer_f32, dir);
               buffer_write (global.bufferServer, buffer_string, state);
               buffer_write (global.bufferServer, buffer_u32, currentHealth);
               buffer_write (global.bufferServer, buffer_u32, currentEnergy);
               buffer_write (global.bufferServer, buffer_u32, currentMaxEnergy);
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
        
    case S_BROADCAST_HEROS_LINKED:
        var originPlayerId = buffer_read (buffer, buffer_u8);
        var targetPlayerId = buffer_read (buffer, buffer_u8);
        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
                buffer_seek (global.bufferServer,  buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, C_HEROS_LINKED);
                buffer_write (global.bufferServer, buffer_u8, originPlayerId);
                buffer_write (global.bufferServer, buffer_u8, targetPlayerId);
                network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }
        }
        break;
        
    case S_BROADCAST_HEROS_UNLINKED:
        var originPlayerId = buffer_read (buffer, buffer_u8);
        var targetPlayerId = buffer_read (buffer, buffer_u8);
        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
                buffer_seek (global.bufferServer,  buffer_seek_start, 0);
                buffer_write (global.bufferServer, buffer_u8, C_HEROS_UNLINKED);
                buffer_write (global.bufferServer, buffer_u8, originPlayerId);
                buffer_write (global.bufferServer, buffer_u8, targetPlayerId);
                network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }
        }
        break;
        
    case S_TURRET_COORDINATES_UPDATED_MESSAGE:
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var deploy = buffer_read(buffer, buffer_bool);
        var dir = buffer_read(buffer, buffer_f32);
        var currentHealth = buffer_read (buffer, buffer_u32);
        
        with(obj_player)
        {
            if (self.playerSocket != socket)
            {
               buffer_seek (global.bufferServer ,buffer_seek_start, 0);
               buffer_write (global.bufferServer, buffer_u8, C_TURRET_COORDINATES_UPDATED_MESSAGE);
               buffer_write (global.bufferServer, buffer_u32, pId);
               buffer_write (global.bufferServer, buffer_f32, xx);
               buffer_write (global.bufferServer, buffer_f32, yy);
               buffer_write (global.bufferServer, buffer_bool, deploy);
               buffer_write (global.bufferServer, buffer_f32, dir);
               buffer_write (global.bufferServer, buffer_u32, currentHealth);
               network_send_packet (self.playerSocket, global.bufferServer, buffer_tell (global.bufferServer));
            }
        }
        break;
		
	case S_BROADCAST_PETDRONE_UPDATED :
		var pId = buffer_read (buffer, buffer_u32);
		var parent = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteId = buffer_read(buffer, buffer_u32);
        var imageId = buffer_read(buffer, buffer_u8);
        var dir = buffer_read (buffer, buffer_f32);
		var currentFuel = buffer_read (buffer, buffer_u32);
		
		with (obj_player)
        {
			if (self.playerIdentifier != pId)
            {
	            buffer_seek (global.bufferServer , buffer_seek_start, 0);
	            buffer_write(global.bufferServer, buffer_u8, C_PETDRONE_UPDATED_MESSAGE);
				buffer_write(global.bufferServer, buffer_u32, parent);
			    buffer_write(global.bufferServer, buffer_f32, xx);
			    buffer_write(global.bufferServer, buffer_f32, yy);
			    buffer_write(global.bufferServer, buffer_u32, spriteId);
			    buffer_write(global.bufferServer, buffer_u8, imageId);
			    buffer_write(global.bufferServer, buffer_f32, dir);
			    buffer_write(global.bufferServer, buffer_u32, currentFuel);
	            network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
			}
        }
		break;
		
	case S_PETDRONE_ACTION_MESSAGE:
        var target = buffer_read (buffer, buffer_u32);
        var damage = buffer_read (buffer, buffer_u8);
		
		with(obj_localPlayer)
		{
			if (self.id == target)
			{
				with (obj_player)
				{
					if(self.playerIdentifier == target.playerId)
					{
						buffer_seek (global.bufferServer , buffer_seek_start, 0);
			            buffer_write(global.bufferServer, buffer_u8, C_PLAYER_HEAL_MESSAGE);
					    buffer_write(global.bufferServer, buffer_u8, damage);
			            network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
					}
				}
			}
		}
		with (obj_localNpc)
		{
			if(self.id == target)
			{
				self.currentHealth -= damage;
			}
		}
		break;
}