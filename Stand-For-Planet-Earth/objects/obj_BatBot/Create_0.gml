event_inherited();

// Overrides default values
runningMaxSpd = 7;
shot1PerSec = 3;              //nombre de tir par sec avec 2 battes
shot1PerSec2 = shot1PerSec/2       //nombre de tir par sec avec 1 battes
shot1_bullet_count = 1;             // Nombre de balles
shot1_bullet_type = obj_bullet_BatBot;    // Type de balle
shot2PerSec = 2;
precision = 2;                      // Précision
weaponPosX = 65;
weaponPosY = 0;
staticFire2 = true;
energyCostForFire2 = 50;

maxNumberOfBatte = 2;
numberOfBatte=maxNumberOfBatte;
fire1_droite = true;

scr_setFireImageSpeed(spr_BatBot_fire1_d,shot1PerSec)
scr_setFireImageSpeed(spr_BatBot_fire1_g,shot1PerSec)
scr_setFireImageSpeed(spr_BatBot_fire1_gg,shot1PerSec2)
scr_setFireImageSpeed(spr_BatBot_fire2_d,shot2PerSec)

scr_setMoveImageSpeed(spr_BatBot_move_0,walkingMaxSpd,256);
scr_setMoveImageSpeed(spr_BatBot_move_1,walkingMaxSpd,256);
scr_setMoveImageSpeed(spr_BatBot_move_2,walkingMaxSpd,256);
scr_setMoveImageSpeed(spr_BatBot_jambes,walkingMaxSpd,256);

enableDeploy = true;
enableLegs = true;
legs_type = obj_BatBot_jambes;

enableStandardFire1 = false;

ds_map_add(sprites, "deploying", spr_BatBot_deploy);
ds_map_add(sprites, "standing", spr_BatBot_move_2);
ds_map_add(sprites, "walking", spr_BatBot_move_2);
ds_map_add(sprites, "dashing", spr_BatBot_move_2);
ds_map_add(sprites, "firing1", spr_BatBot_fire1_d);
ds_map_add(sprites, "firing2", spr_BatBot_fire2_d);
ds_map_add(sprites, "dead", spr_BatBot_dead);

ds_map_add(imageSpeeds, "deploying", 0.5);
ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 1);
ds_map_add(imageSpeeds, "firing1", 1);
ds_map_add(imageSpeeds, "firing2", 1);
ds_map_add(imageSpeeds, "dead", 0.25);

alarm[8] = -1;


///créer ses propres jambes
if(enableLegs)
{
    legs=instance_create(x,y,legs_type);
}


