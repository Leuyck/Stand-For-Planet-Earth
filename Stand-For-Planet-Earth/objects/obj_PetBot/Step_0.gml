event_inherited();
if (global.playerId == self.playerId)
{
    if(fire2)
    {
        if(collision_point(mouse_x,mouse_y,obj_localNpc,false,true)!=noone)
        {
            var target = collision_point(mouse_x,mouse_y,obj_localNpc,false,true)
            with (obj_PetDrone)
            {
                self.target = target
            }
        }
        
    }
}

