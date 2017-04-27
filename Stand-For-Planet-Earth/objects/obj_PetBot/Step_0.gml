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
				self.job = "attack"
            }
        }
		if(collision_point(mouse_x,mouse_y,obj_localPlayer,false,true)!=noone)
        {
            var target = collision_point(mouse_x,mouse_y,obj_localPlayer,false,true)
            with (obj_PetDrone)
            {
	            self.target = target
				self.job = "heal"
            }
        }
        
    }
}

