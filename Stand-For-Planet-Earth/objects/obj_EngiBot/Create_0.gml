event_inherited();

// Overrides default values
walkingMaxSpd = 13;
enableLegs=false

enableDeploy = false;

weaponPosX = 43;
weaponPosY = 57;

shot1PerSec = 5;                   // Cadence de tir
shot1_bullet_count = 1;             // Nombre de balles
shot1_bullet_type = obj_bullet3;    // Type de balle
precision = 10;                      // Précision
precision2 = 1;
cooldownFire2 = 10
energyRegen = 1;

scr_setFireImageSpeed(spr_EngiBot_shot,shot1PerSec);
scr_setMoveImageSpeed(spr_EngiBot_move,walkingMaxSpd,256);


ds_map_add(sprites, "standing", spr_EngiBot_shot);
ds_map_add(sprites, "walking", spr_EngiBot_move);
ds_map_add(sprites, "dashing", spr_EngiBot_move);
ds_map_add(sprites, "firing1", spr_EngiBot_shot);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 1);

///light shadow
scr_createLightCollisionCircle(20,98,44,124);