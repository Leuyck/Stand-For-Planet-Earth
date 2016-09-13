/// scr_fire2Check()

if (fire2 && !fire1)
{
    if (currentEnergy > 0)
    {
        state = "fire2"
        
        if (!instance_exists(obj_energyWall))
        {
            instance_create (x+ 100, y+100, obj_energyWall)
            obj_energyWall.image_angle = self.image_angle + 90;
        }
    }
}
else
{   
    with (obj_energyWall)
    {
        instance_destroy();
    }

}
