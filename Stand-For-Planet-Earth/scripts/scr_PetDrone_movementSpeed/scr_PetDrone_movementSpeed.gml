///scr_PetDrone_movementSpeed();

if(patrolPaused && state == "passive")
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
else if(!acceleration && spd<0.5)
{
    spd=0.5
}
if((state=="passive") && distance_to_object(parent)>patrolRange)
{
    spd = maxSpd
}
return spd;
