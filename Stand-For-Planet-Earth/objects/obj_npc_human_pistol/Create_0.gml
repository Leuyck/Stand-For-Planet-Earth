event_inherited();

// Override properties
relativeBoutCanonX = 82;                    //différence de position entre X et weaponX
relativeBoutCanonY = 7;                     //différence de position entre Y et weaponY
attack_range =irandom_range(attack_range_min,attack_range_max);                 // Distance d'attaque
shot1PerSec = shot1PerSecMax;       // Cadence de tir par sec
remainingAmoQuantity = amoQuantity; // Quantités restantes de munitions

scr_setFireImageSpeed(spr_npc1_shot,shot1PerSec);

scr_setMoveImageSpeed(spr_npc1_move,normalSpd,128);

ds_map_add(sprites, "standing", spr_npc1_stand);
ds_map_add(sprites, "walking", spr_npc1_move);
ds_map_add(sprites, "chasing", spr_npc1_move);
ds_map_add(sprites, "dashing", spr_npc1_move);
ds_map_add(sprites, "firing", spr_npc1_shot);
ds_map_add(sprites, "reloading", spr_npc1_reload);
ds_map_add(sprites, "delay_firing", spr_npc1_shot);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "chasing", 1*2);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", 1);
ds_map_add(imageSpeeds, "reloading", sprite_get_number(spr_npc1_reload)/(reloadingTime*room_speed));
ds_map_add(imageSpeeds, "delay_firing", 1);

//scr_createLightCollisionCircle(19,73,45,114);