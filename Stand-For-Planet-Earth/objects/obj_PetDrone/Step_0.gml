if(global.gamePaused == false){

	image_angle = direction;

	with(parent)
	{
		if(global.playerId == self.playerId)
		{
			with(other)
			{
				spd = scr_PetDrone_movementSpeed();
				if(path_index !=-1) then path_speed = spd;

			
				if (target == 0)
				{
				    scr_PetDrone_passiveMovements();
				}
				else
				{
					scr_PetDrone_activeMovements();
				}
				scr_PetDrone_setState();
				scr_setSprites();

			}
		}
	}
}