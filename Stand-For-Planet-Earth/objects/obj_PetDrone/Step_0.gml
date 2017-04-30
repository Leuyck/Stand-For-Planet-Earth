image_angle = direction;
with(parent)
{
	if(global.playerId == self.playerId)
	{
		with(other)
		{
			spd = scr_PetDrone_movementSpeed();
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