///scr_nextLevel()
if(instance_exists(obj_server))
{
    if(place_meeting(self.x,self.y,obj_nextLevel)==1)
    {
        with(obj_localPlayer)
        {
            if (self.playerId != other.playerId)
            {
                if(place_meeting(self.x,self.y,obj_nextLevel)==1)
                {
                    scr_askAllPlayersToGoToRoom(obj_nextLevel.nextLevel);
                }
            }
        }
    }
}
