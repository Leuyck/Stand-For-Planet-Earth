///scr_sendPlayerInfoToClient(target, socket, pId, playerNumber, pName, pCharacter)
var target = argument[0]
var socket = argument[1];
var pId = argument[2];
var playerNumber = argument[3];
var pName = argument[4];
var pCharacter = argument[5];



buffer_seek(global.bufferServer, buffer_seek_start, 0);
buffer_write (global.bufferServer, buffer_u8, target);
buffer_write (global.bufferServer, buffer_u32, pId);
buffer_write (global.bufferServer, buffer_u8, playerNumber);
buffer_write (global.bufferServer, buffer_string, pName);
buffer_write (global.bufferServer, buffer_string, pCharacter);
network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer)); 
