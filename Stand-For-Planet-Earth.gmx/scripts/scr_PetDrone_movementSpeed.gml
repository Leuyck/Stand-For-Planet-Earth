///scr_PetDrone_movementSpeed();

if(patrolPaused)
{
    spd = 0
}
else
{
    if(distance_to_point(patrolx,patroly)<=(spd-accelerationSpdPerFrame)*spd-(spd/accelerationSpdPerFrame))
    {
       acceleration = false;
    }
    if(distance_to_point(patrolx,patroly)>(spd-accelerationSpdPerFrame)*spd-(spd/accelerationSpdPerFrame))
    {
        acceleration = true;
    }
}
if (acceleration && spd < maxSpd)
{
    spd+=accelerationSpdPerFrame;
}
if (!acceleration && spd>0.5)
{
    spd -= accelerationSpdPerFrame;
}
if((state=="passive") && distance_to_object(parent)>patrolRange)
{
    spd = maxSpd
}
return spd;
