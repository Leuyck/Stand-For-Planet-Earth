///scr_PetDrone_movementSpeed();

if(path_index==-1 || job =="attacking" || job =="healing")
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
if (!acceleration && spd>0.5 && !chasing)
{
    spd -= accelerationSpdPerFrame;
}
if(!acceleration && spd<0.5)
{
    spd=0.5
}
return spd;
