with (obj_localPlayer)
{
    if (self.playerId == other.dashBarId)
    {
        other.x = self.x
        other.y = self.y+100
    
        if (self.dashNumber == 2) 
        {
            other.image_index = 0;
        }
        else if (self.dashNumber == 1) 
        {
            other.image_index = 1;
            other.alarm[0] = 3 * room_speed;
        }
        else if (self.dashNumber == 0) 
        {        
            if (other.image_index == 1)
            {
                other.image_index = 2
            }
            if (other.image_index ==2)
            {
                other.image_speed = 0.05
            }
            else if (other.image_index == other.image_number)
            {
                other.image_speed = -0.05
            }   
        }
    }
}

