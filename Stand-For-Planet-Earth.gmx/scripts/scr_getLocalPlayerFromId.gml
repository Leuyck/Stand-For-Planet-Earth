var playerId = argument[0];

with(obj_localPlayer)
{
    if(self.playerId == playerId)
    {
        return id;
    }
}
