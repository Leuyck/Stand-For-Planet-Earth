event_inherited();

// Overrides default values
runningMaxSpd = 11;
shot1PerSec = 1;                   // Cadence de tir
shot1_bullet_count = 1;             // Nombre de balles
shot1_bullet_type = obj_bullet2;    // Type de balle
precision = 4;                      // Précision

shieldSize = 1;                     // taille du shield
shieldBuffFactor = 0.65             // facteur de grossissement du shield par allié linkés

cooldownEnergyWall = 10;

ds_map_add(sprites, "standing", spr_hero2_stand);
ds_map_add(sprites, "walking", spr_hero2_move);
ds_map_add(sprites, "dashing", spr_hero2_move);
ds_map_add(sprites, "firing1", spr_hero2_shot);
ds_map_add(sprites, "fire2", spr_hero2_shot);

ds_map_add(imageSpeeds, "standing", 0.25);
ds_map_add(imageSpeeds, "walking", 0.25);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 0.05);
ds_map_add(imageSpeeds, "fire2", 0.1);

alarm[4] = -1;
alarm[6] = -1;

