///scr_PetDrone_movementSpeed();
if (acceleration && spd < maxSpd)
{
    spd+=accelerationSpdPerFrame;
}else{
	spd = maxSpd;	
}

return spd;