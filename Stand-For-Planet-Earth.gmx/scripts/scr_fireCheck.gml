// If we are firing

if(fire1)
{
    state = "firing";
    if (alarm[0] <= 0)
    {
        instance_create (obj_hero1.x+lengthdir_x(193.00,obj_hero1.dir+0.30), obj_hero1.y+lengthdir_y(193.00,obj_hero1.dir+0.30), obj_bullet3);
        alarm[0] = shot1_delay
    }
}
/*else
{
    state = "standing";
}
