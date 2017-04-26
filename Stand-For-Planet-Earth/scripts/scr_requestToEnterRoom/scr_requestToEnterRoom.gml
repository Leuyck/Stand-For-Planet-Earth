///scr_requestToEnterRoom()

buffer_seek(global.bufferNetwork, buffer_seek_start, 0);
buffer_write (global.bufferNetwork, buffer_u8, S_PLAYER_REQUESTS_TO_ENTER_MAP_MESSAGE);
buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork))
