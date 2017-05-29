socket = network_create_socket (network_socket_tcp);

var errorCode = network_connect(socket, global.IPAddress, global.port);

ping = 0;

global.bufferNetwork = buffer_create(1024, buffer_fixed, 1);
global.npcIdCounter = 0;
global.playerId = 0;
global.playerNumber = 0;

alarm[0] = room_speed;



