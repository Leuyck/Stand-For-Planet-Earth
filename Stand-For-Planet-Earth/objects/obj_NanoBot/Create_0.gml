event_inherited();

// Overrides default values
runningMaxSpd = 12;
shot1_bullet_count = 1;             // Nombre de balles
shot1_bullet_type = obj_bullet1;    // Type de balle
precision = 3;                      // Précision

ds_map_add(sprites, "standing", spr_hero1_stand);
ds_map_add(sprites, "walking", spr_hero1_move);
ds_map_add(sprites, "dashing", spr_hero1_move);
ds_map_add(sprites, "firing1", spr_hero1_shot);

ds_map_add(imageSpeeds, "standing", 0.25);
ds_map_add(imageSpeeds, "walking", 0.25);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing1", 0.5);

