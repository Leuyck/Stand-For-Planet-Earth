/// create event of object : obj_server

port = 8000;
socket = network_create_server (network_socket_tcp, port, 4);
playerIdCounter = 1;

global.bufferServer = buffer_create (1024, buffer_fixed, 1);
global.playerId = 1
global.npcIdCounter = 0;
global.playerId = 1;
global.map = "";

