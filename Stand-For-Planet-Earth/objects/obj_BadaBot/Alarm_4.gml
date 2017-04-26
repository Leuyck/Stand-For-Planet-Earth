/// alarm pour cooldown energywall
with (obj_energyWall)
{
    image_alpha -= 0.01
    
    if (image_alpha == 0)
    {
        instance_destroy();
        alarm[6]= -1
    }
    
    other.alarm[4] = 1
}


