event_inherited();

// Overrides default values

weaponPosX = 43;
weaponPosY = 57;

turretPrecision = 1;
turret = noone;

fire1Sprite = spr_EngiBot_shot;
scr_setFireImageSpeed(fire1Sprite,shot1PerSec);
scr_setFireImageSpeed(spr_EngiBot_shotTuret,shot2PerSec);
scr_setMoveImageSpeed(spr_EngiBot_move,walkingMaxSpd,256);
scr_setMoveImageSpeed(legs_type,walkingMaxSpd,256);


ds_map_add(sprites, "deploying", spr_EngiBot_deploy);
ds_map_add(sprites, "standing", spr_EngiBot_shot);
ds_map_add(sprites, "walking", spr_EngiBot_move);
ds_map_add(sprites, "dashing", spr_EngiBot_move);
ds_map_add(sprites, "firing1", spr_EngiBot_shot);
ds_map_add(sprites, "firing2", spr_EngiBot_shotTuret);
ds_map_add(sprites, "dead", spr_EngiBot_mort);
ds_map_add(sprites, "notDeployed",spr_EngiBot_deploy);

ds_map_add(imageSpeeds, "deploying", 1);
ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 1);
ds_map_add(imageSpeeds, "firing2",  1);
ds_map_add(imageSpeeds, "dead",  1);
ds_map_add(imageSpeeds, "notDeployed", 1);

///light shadow
scr_createLightCollisionCircle(19,99,43,123);