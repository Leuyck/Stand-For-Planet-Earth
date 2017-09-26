image_angle = direction;

with(parent)
{
	if(global.playerId == self.playerId)
	{
		with(other)
		{
			spd = scr_PetDrone_movementSpeed();
			if(path_index !=-1) then path_speed = spd;

			scr_setSprites();

			if (job=="patrol" || job == "waitForHeal")
			{
			    scr_PetDrone_passiveMovements();
			}
			if(target != noone)
			{
				scr_PetDrone_activeMovements();
			}
			scr_PetDrone_setState();
		}
	}
}