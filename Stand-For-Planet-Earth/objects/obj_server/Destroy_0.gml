// For unknown reason, destroying the socket crash the game.
// It seems to work fine if not destroying explicitly.
// Need investigation.
//network_destroy (socket);

buffer_delete (global.bufferServer);

