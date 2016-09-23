///scr_hero3_fire2Check()


if (fire2 && !fire1)
{
    if (!instance_exists(obj_turet_hero3))
    {
        turret = instance_create (x + lengthdir_x(193.00, direction + 0.30), y + lengthdir_y (193.00, direction + 0.30), obj_turet_hero3);
        
        turret.targetX = mouse_x;
        turret.targetY = mouse_y;

    }
}

