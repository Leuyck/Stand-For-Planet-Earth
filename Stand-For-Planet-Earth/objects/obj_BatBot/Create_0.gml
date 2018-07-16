event_inherited();

// Overrides default values

shot1PerSec2 = shot1PerSec/2       //nombre de tir par sec avec 1 battes
weaponPosX = 65;
weaponPosY = 0;
relativeBrasX =17
relativeBrasDroitY =50
relativeBrasGaucheY =-50

maxNumberOfBatte = 2;
numberOfBatte=maxNumberOfBatte;
fire1_droite = true;
actionDefiniedForFire2 = false;

scr_setFireImageSpeed(spr_BatBot_fire1_d,shot1PerSec)
scr_setFireImageSpeed(spr_BatBot_fire1_g,shot1PerSec)
scr_setFireImageSpeed(spr_BatBot_fire1_gg,shot1PerSec2)
scr_setFireImageSpeed(spr_BatBot_fire2_d,shot2PerSec)
scr_setFireImageSpeed(spr_BatBot_fire2_g,shot2PerSec)

scr_setMoveImageSpeed(spr_BatBot_move_0,currentSpeed,256);
scr_setMoveImageSpeed(spr_BatBot_move_1,currentSpeed,256);
scr_setMoveImageSpeed(spr_BatBot_move_2,currentSpeed,256);
scr_setMoveImageSpeed(legs_type,currentSpeed,256);

ds_map_add(sprites, "deploying", spr_BatBot_deploy);
ds_map_add(sprites, "standing", spr_BatBot_move_2);
ds_map_add(sprites, "walking", spr_BatBot_move_2);
ds_map_add(sprites, "dashing", spr_BatBot_move_2);
ds_map_add(sprites, "firing1", spr_BatBot_fire1_d);
ds_map_add(sprites, "firing2", spr_BatBot_fire2_d);
ds_map_add(sprites, "dead", spr_BatBot_mort_2);
ds_map_add(sprites, "notDeployed",spr_BatBot_deploy);

ds_map_add(imageSpeeds, "deploying", 0.5);
ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 1);
ds_map_add(imageSpeeds, "firing1", 1);
ds_map_add(imageSpeeds, "firing2", 1);
ds_map_add(imageSpeeds, "dead", 1);
ds_map_add(imageSpeeds, "notDeployed",0);

alarm[8] = -1;
alarm[9] = -1;

///light shadow
scr_createLightCollisionCircle(80,114,85,154);