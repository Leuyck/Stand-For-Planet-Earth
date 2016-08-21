///scr_sendCurrentMapToClient()
var socket = argument[0];
var roomInstance = argument[1];
var roomName = room_get_name(roomInstance);

buffer_seek  (global.bufferServer, buffer_seek_start, 0);
buffer_write (global.bufferServer, buffer_u8, C_GO_TO_ROOM_MESSAGE);
buffer_write (global.bufferServer, buffer_string, roomName);
network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer));

