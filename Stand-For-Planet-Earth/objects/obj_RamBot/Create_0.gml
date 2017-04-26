event_inherited();

// Overrides default values
runningMaxSpd = 7;
shot1PerSec = 30;                   // Cadence de tir
shot1_bullet_count = 1;             // Nombre de balles
shot1_bullet_type = obj_bullet4;    // Type de balle
precision = 12;                      // Précision

godmode = false;
godmodeMaxDuration = 5;

ds_map_add(sprites, "standing", spr_hero4_stand);
ds_map_add(sprites, "walking", spr_hero4_move);
ds_map_add(sprites, "dashing", spr_hero4_move);
ds_map_add(sprites, "firing1", spr_hero4_shot);
ds_map_add(sprites, "godmode", spr_hero4_shot);

ds_map_add(imageSpeeds, "standing", 0.25);
ds_map_add(imageSpeeds, "walking", 0.25);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 0.8);
ds_map_add(imageSpeeds, "godmode", 0.8);

alarm[6] = -1

