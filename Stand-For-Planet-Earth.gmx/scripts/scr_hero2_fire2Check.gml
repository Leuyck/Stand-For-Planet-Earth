///scr_hero3_fire2Check()


if (fire2 && !fire1)
{
    if (currentEnergy >= energyCostForFire2 && alarm[7] <= 0 && !instance_exists(obj_shieldGenerator))
    {
        shieldGenerator = instance_create(x + lengthdir_x(193.00, direction + 0.30), y + lengthdir_y (193.00, direction + 0.30), obj_shieldGenerator);
        
        shieldGenerator.deployPointX = mouse_x;
        shieldGenerator.deployPointY = mouse_y;
        
        shieldGenerator.direction = direction + random_range(-precision2, precision2);
        
        var deployDistance = point_distance(shieldGenerator.x,shieldGenerator.y,shieldGenerator.deployPointX,shieldGenerator.deployPointY);
        if (deployDistance <=lanchMinimumDistance)
        {
            deployDistance = lanchMinimumDistance;
        }
        else if (deployDistance >= lanchMaximumDistance)
        {
            deployDistance = lanchMaximumDistance
        }
        
        shieldGenerator.speed = deployDistance/shieldGenerator.alarm[0];
        shieldGenerator.owner = id;
        shieldGenerator.shieldGeneratorId = playerId;
        shieldGenerator.maxEnergy = energyCostForFire2;
        shieldGenerator.currentEnergy = energyCostForFire2;
        state = "fire2";
        currentEnergy -= energyCostForFire2
    }
    else
    {
        with(obj_shieldGenerator)
        {
            if (distance_to_object(owner)<=20 && self.deploy)
            {
                owner.currentEnergy += self.currentEnergy/2;
                self.currentEnergy = 0;
                instance_destroy();
            }
        }
    }
    alarm[7] = 1*room_speed;
}

