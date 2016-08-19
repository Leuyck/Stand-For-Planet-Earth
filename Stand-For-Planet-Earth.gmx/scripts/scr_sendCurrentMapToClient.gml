///scr_sendCurrentMapToClient()
var socket = argument[0]

buffer_seek(global.bufferServer, buffer_seek_start, 0);
buffer_write (global.bufferServer, buffer_u8, C_MAP_CHOOSEN_MESSAGE);
buffer_write (global.bufferServer, buffer_string, global.map);
network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));

