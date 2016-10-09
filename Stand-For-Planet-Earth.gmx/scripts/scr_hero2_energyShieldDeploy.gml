/// scr_hero2_energyWallDeploy()


if (!instance_exists(obj_energyWall))
{
    energyWall = instance_create (x, y, obj_energyWall);
    energyWall.owner = id;
    energyWall.image_xscale = 0;
    energyWall.image_yscale = 0;
    energyWall.alarm[0] = 1;
}

