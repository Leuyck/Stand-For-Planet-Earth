image_angle = direction;
spd = scr_PetDrone_movementSpeed();
scr_setSprites();

if (state=="passive")
{
    scr_PetDrone_passiveMovements();
}
if(target != noone)
{
    scr_PetDrone_activeMovements();
}

