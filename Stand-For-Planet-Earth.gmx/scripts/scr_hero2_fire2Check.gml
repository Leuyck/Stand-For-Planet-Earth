///scr_hero3_fire2Check()


if (fire2 && !fire1)
{
    if (currentEnergy >= energyCostForFire2 && alarm[7] <= 0 && !instance_exists(obj_wallGenerator))
    {
        wallGenerator = instance_create(x + lengthdir_x(193.00, direction + 0.30), y + lengthdir_y (193.00, direction + 0.30), obj_wallGenerator);
        
        wallGenerator.deployPointX = mouse_x;
        wallGenerator.deployPointY = mouse_y;
        
        wallGenerator.direction = direction + random_range(-precision2, precision2);
        wallGenerator.alarm[0] = point_distance(wallGenerator.x,wallGenerator.y,wallGenerator.deployPointX,wallGenerator.deployPointY)/wallGenerator.speed;
        wallGenerator.owner = id;
        wallGenerator.wallGeneratorId = playerId;
        wallGenerator.maxEnergy = energyCostForFire2;
        wallGenerator.currentEnergy = energyCostForFire2;
        state = "fire2";
        currentEnergy -= energyCostForFire2
    }
    else
    {
        with(obj_wallGenerator)
        {
            if (distance_to_object(owner)<=20 && self.deploy)
            {
                self.currentEnergy = 0;
                owner.currentEnergy += owner.energyCostForFire2/2;
            }
        }
    }
    alarm[7] = 1*room_speed;
}

