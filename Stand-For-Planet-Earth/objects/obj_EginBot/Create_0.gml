event_inherited();

// Overrides default values
runningMaxSpd = 10;
shot1PerSec = 2;                   // Cadence de tir
shot1_bullet_count = 1;             // Nombre de balles
shot1_bullet_type = obj_bullet3;    // Type de balle
precision = 10;                      // Précision
precision2 = 1
cooldownFire2 = 10
energyRegen = 1;



ds_map_add(sprites, "standing", spr_hero3_stand);
ds_map_add(sprites, "walking", spr_hero3_move);
ds_map_add(sprites, "dashing", spr_hero3_move);
ds_map_add(sprites, "firing1", spr_hero3_shot);

ds_map_add(imageSpeeds, "standing", 0.25);
ds_map_add(imageSpeeds, "walking", 0.25);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 0.15);

