/// scr_fire2Check()

if (fire2 && !fire1)
{
    if (currentEnergy > 0 && alarm[4] == -1)
    {
        state = "fire2"
        
        if (!instance_exists(obj_energyWall))
        {
            energyWall = instance_create (x, y, obj_energyWall)
            energyWall.image_alpha = 0.5;
            energyWall.owner = id
        }
        currentEnergyRegen = 0;
        alarm[4] = cooldownEnergyWall * room_speed;        
    }
}

