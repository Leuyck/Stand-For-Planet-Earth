///Async Networking Event of Object : obj_server

var currentSocket = ds_map_find_value (async_load, "id");
 
// Le socket que l'on utilise depuis async_load n'est pas celui du client.
if(!instance_exists(obj_client) || obj_client.socket != currentSocket) {
    
    var type_event = ds_map_find_value (async_load, "type");
    switch (type_event) 
    {
        case network_type_connect :
            var socket = ds_map_find_value (async_load, "socket");
            var pId = playerIdCounter++;
            var playerNumber = scr_getPlayerNumber();
            
            //create the player
            with (instance_create(0, 0, obj_player))
            {
                self.playerIdentifier = pId;
                self.playerName = "";
                self.playerInGame = false;
                self.playerSocket = socket;
                self.playerNumber = playerNumber
            }
            
            // envoie des informations du player
            buffer_seek(global.bufferServer, buffer_seek_start, 0);
            buffer_write (global.bufferServer, buffer_u8, C_PLAYER_INFORMATION_MESSAGE);
            buffer_write (global.bufferServer, buffer_u32, pId);
            buffer_write (global.bufferServer, buffer_u8, playerNumber);
            network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));
            
        break;
            
        case network_type_disconnect:
            var socket = ds_map_find_value (async_load, "socket");
            var playerLeavingId = 0;
            with (obj_player)
            {
                if (playerSocket == socket)
                {
                    playerLeavingId = playerIdentifier;
                }
            }
            with (obj_player)
            {
                if (self.playerIdentifier == playerLeavingId)
                {
                    instance_destroy();
                }
                else
                {
                    buffer_seek(global.bufferServer, buffer_seek_start, 0);
                    buffer_write (global.bufferServer, buffer_u8, C_PLAYER_DISCONNECTED_MESSAGE);
                    buffer_write (global.bufferServer, buffer_u32, playerLeavingId);
                    network_send_packet (playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
                }
            }
            with (obj_localPlayer)
            {
                if (playerId == playerLeavingId)
                {
                    instance_destroy();
                }
            }
            with (obj_btn_scrollHero)
            {
                if (self.buttonId == playerLeavingId)
                {
                    instance_destroy();
                }
            }
            
            // Si le joueur qui s'est déconnecté héberge la partie.
            if(playerLeavingId == global.playerId)
            {
                with (obj_player)
                {
                    buffer_seek(global.bufferServer, buffer_seek_start, 0);
                    buffer_write (global.bufferServer, buffer_u8, C_SERVER_DISCONNECTED_MESSAGE);
                    network_send_packet (playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
                    instance_destroy();
                }
                
                instance_destroy();
            }
            
            scr_showNotification ("A player has left !", c_orange); 
            
        break;
        
        case network_type_data:
            var socket = ds_map_find_value (async_load, "id");
            var buffer = ds_map_find_value (async_load, "buffer");
            buffer_seek (buffer, buffer_seek_start, 0);
            scr_receivedPacket_server (buffer, socket);
        break;
    }
}

