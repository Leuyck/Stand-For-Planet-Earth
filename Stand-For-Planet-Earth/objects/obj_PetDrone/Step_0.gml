image_angle = direction;
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


