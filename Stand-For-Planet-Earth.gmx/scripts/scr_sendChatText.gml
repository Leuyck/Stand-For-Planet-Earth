///scr_sendChatText(buffer, socket)

var text = argument[0];

buffer_seek  (global.bufferNetwork, buffer_seek_start, 0);
buffer_write (global.bufferNetwork, buffer_u8, S_BROADCAST_CHAT_MESSAGE);
buffer_write (global.bufferNetwork, buffer_u32, global.playerId); 
buffer_write (global.bufferNetwork, buffer_string, global.playerPseudo);   
buffer_write (global.bufferNetwork, buffer_string, text);
network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
