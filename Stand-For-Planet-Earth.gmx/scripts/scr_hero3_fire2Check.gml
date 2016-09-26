///scr_hero3_fire2Check()


if (fire2 && !fire1)
{
    if (currentEnergy >= energyCostForFire2 && alarm[7] <= 0 && !instance_exists(obj_turret_hero3))
    {
        turret = instance_create (x + lengthdir_x(193.00, direction + 0.30), y + lengthdir_y (193.00, direction + 0.30), obj_turret_hero3);
        
        turret.deployPointX = mouse_x;
        turret.deployPointY = mouse_y;
        
        turret.direction = direction + random_range(-precision2, precision2);
        turret.alarm[0] = point_distance(turret.x,turret.y,turret.deployPointX,turret.deployPointY)/turret.speed;
        turret.owner = id;
        state = "fire2";
        currentEnergy -= energyCostForFire2
    }
    else
    {
        with(obj_turret_hero3)
        {
            if (distance_to_object(owner)<=20 && self.deploy)
            {
                instance_destroy();
                owner.currentEnergy += owner.energyCostForFire2/2;
            }
        }
    }
    alarm[7] = 1*room_speed;
}

