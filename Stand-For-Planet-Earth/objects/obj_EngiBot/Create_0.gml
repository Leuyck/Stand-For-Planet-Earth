event_inherited();

// Overrides default values

weaponPosX = 43;
weaponPosY = 57;

shot1_bullet_count = 1;             // Nombre de balles
turretPrecision = 1;
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
scr_createLightCollisionCircle(19,99,43,123);