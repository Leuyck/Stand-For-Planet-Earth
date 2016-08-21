///scr_askAllPlayersToGoToRoom(roomInstance)

var roomInstance = argument[0];
with(obj_player)
{
    scr_askPlayerToGoToRoom(self.playerSocket, roomInstance);
}
