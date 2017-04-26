///coordonnées

if (instance_exists(obj_chatTyping) && obj_chatTyping.isTyping == false)
{
    with(obj_localPlayer) 
    {
        if(self.playerId == global.playerId) 
        {
            if(self.deployed)
            {
                other.trackingEnable = true;
            
                if(other.x == self.x && other.y = self.y)
                {
                    other.viewSpeed = other.viewMaxSpeed;
                }
            }
            if (other.trackingEnable)
            {
                other.x = (mouse_x - self.x)/3 + self.x;
                other.y = (mouse_y - self.y)/3 + self.y;
            }
            else
            {
                other.x = self.x;
                other.y = self.y;
            }
        }
    }
}

__view_set( e__VW.HSpeed, 0, viewSpeed );
__view_set( e__VW.VSpeed, 0, viewSpeed );
__view_set( e__VW.HBorder, 0, (__view_get( e__VW.WPort, 0 )/5)*4 )
__view_set( e__VW.VBorder, 0, (__view_get( e__VW.HPort, 0 )/5)*4 )

