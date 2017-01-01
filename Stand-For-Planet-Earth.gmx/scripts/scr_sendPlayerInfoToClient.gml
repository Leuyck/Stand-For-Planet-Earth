///scr_sendPlayerInfoToClient(socket, pId, playerNumber, pName, pCharacter)
var socket = argument[0];
var pId = argument[1];
var playerNumber = argument[2];
var pName = argument[3];
var pCharacter = argument[4];



buffer_seek(global.bufferServer, buffer_seek_start, 0);
buffer_write (global.bufferServer, buffer_u8, C_NEW_PLAYER_ENTERED_MAP_MESSAGE);
buffer_write (global.bufferServer, buffer_u32, pId);
buffer_write (global.bufferServer, buffer_u8, playerNumber);
buffer_write (global.bufferServer, buffer_string, pName);
buffer_write (global.bufferServer, buffer_string, pCharacter);
network_send_packet (socket, global.bufferServer, buffer_tell(global.bufferServer)); 
