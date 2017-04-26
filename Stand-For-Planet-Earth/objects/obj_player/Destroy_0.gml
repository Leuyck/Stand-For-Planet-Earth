// We need to not destroy the playerSocket here, because we send a disconnection
// message to server. If we destroy the socket, the server never get the message.

////network_destroy(self.playerSocket);

