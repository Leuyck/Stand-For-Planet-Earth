event_inherited();

relativeBoutCanonX = 73;                    //différence de position entre X et weaponX
relativeBoutCanonY = 0;                     //différence de position entre Y et weaponY

scr_setFireImageSpeed(spr_npc2_shot,shot1PerSec);
scr_setMoveImageSpeed(spr_npc2_move,normalSpd,128);

ds_map_add(sprites, "standing", spr_npc2_stand);
ds_map_add(sprites, "walking", spr_npc2_move);
ds_map_add(sprites, "chasing", spr_npc2_move);
ds_map_add(sprites, "dashing", spr_npc2_move);
ds_map_add(sprites, "firing", spr_npc2_shot);
//ds_map_add(sprites, "reloading", spr_hero1_reload);
ds_map_add(sprites, "delay_firing", spr_npc2_shot);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "chasing", 2);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", 1);
//ds_map_add(imageSpeeds, "reloading", 0.25);
ds_map_add(imageSpeeds, "delay_firing", 1);

//scr_createLightCollisionCircle(17,83,12,141);

