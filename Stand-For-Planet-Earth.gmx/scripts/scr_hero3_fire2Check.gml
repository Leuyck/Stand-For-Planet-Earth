///scr_hero3_fire2Check()


if (fire2 && !fire1)
{
    if (!instance_exists(obj_turret_hero3))
    {
        turret = instance_create (x + lengthdir_x(193.00, direction + 0.30), y + lengthdir_y (193.00, direction + 0.30), obj_turret_hero3);
        
        turret.deployPointX = mouse_x;
        turret.deployPointY = mouse_y;
        
        state = "fire2";
    }
}

