///scr_sendCurrentMapToClients()

with(obj_player)
{
    scr_sendCurrentMapToClient(self.playerSocket);
}
