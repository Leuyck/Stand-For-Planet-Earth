///scr_sendChatText(buffer, socket)

var buffer = argument[0]
var socket = argument [1]

buffer_seek (buffer, buffer_seek_start, 0);
buffer_write (buffer, buffer_u8, 8);
buffer_write (buffer, buffer_u32, global.playerId); 
buffer_write (buffer, buffer_string, global.playerPseudo);   
buffer_write (buffer, buffer_string, global.text);
network_send_packet (socket, buffer, buffer_tell(buffer));
