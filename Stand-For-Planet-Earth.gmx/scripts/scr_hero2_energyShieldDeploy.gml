/// scr_hero2_energyShieldDeploy()


if (!instance_exists(obj_energyShield))
{
    energyShield = instance_create (x, y, obj_energyShield);
    energyShield.owner = id;
    energyShield.image_xscale = 0;
    energyShield.image_yscale = 0;
    energyShield.alarm[0] = 1;
}

