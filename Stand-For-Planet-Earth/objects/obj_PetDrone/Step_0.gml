image_angle = direction;
if(instance_exists(obj_server))
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