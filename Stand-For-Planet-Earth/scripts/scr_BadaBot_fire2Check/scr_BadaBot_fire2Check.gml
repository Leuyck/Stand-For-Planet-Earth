/// scr_BadaBot_fire2Check()

if (fire2 && !fire1)
{
    if (currentEnergy > 0)
    {
        state = "fire2"
        
        if (!instance_exists(obj_energyWall))
        {
            energyWall = instance_create (x, y, obj_energyWall);
            energyWall.image_alpha = 0.5;
            energyWall.owner = id
        }
        currentEnergyRegen = 0;  
        alarm[6] = 0.1 * room_speed;    
    }
}

if (instance_exists (obj_energyWall)){
    energyWall.image_xscale = shieldSize;
    energyWall.image_yscale = shieldSize;
}
