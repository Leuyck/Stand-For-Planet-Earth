///scr_sendPlayerInfoToClient(socket, pId, pName, pCharacter, x, y)
var socket = argument[0];
var pId = argument[1];
var pName = argument[2];
var pCharacter = argument[3];
var px = argument[4];
var py = argument[5];


buffer_seek(global.bufferServer, buffer_seek_start, 0);
buffer_write (global.bufferServer, buffer_u8, 6);
buffer_write (global.bufferServer, buffer_u32, pId);
buffer_write (global.bufferServer, buffer_string, pName);
buffer_write (global.bufferServer, buffer_string, pCharacter);
buffer_write (global.bufferServer, buffer_f32, px);
buffer_write (global.bufferServer, buffer_f32, py);
network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer)); 
