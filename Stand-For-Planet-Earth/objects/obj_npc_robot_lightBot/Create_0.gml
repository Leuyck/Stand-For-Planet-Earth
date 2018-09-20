event_inherited();

relativeBoutCanonX = 134-55;                    //différence de position entre X et weaponX
relativeBoutCanonY = 106-82;                     //différence de position entre Y et weaponY

scr_setFireImageSpeed(spr_npc_lightBot_tir,shot1PerSec);
scr_setMoveImageSpeed(spr_npc_lightBot_marche,normalSpd,128);

ds_map_add(sprites, "standing", spr_npc_lightBot_marche);
ds_map_add(sprites, "walking", spr_npc_lightBot_marche);
ds_map_add(sprites, "chasing", spr_npc_lightBot_marche);
//ds_map_add(sprites, "dashing", spr_npc_lightBot_marche);
ds_map_add(sprites, "firing", spr_npc_lightBot_tir);
//ds_map_add(sprites, "reloading", spr_npc1_reload);
ds_map_add(sprites, "delay_firing", spr_npc_lightBot_tir);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "chasing", 1*2);
//ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", 1);
//ds_map_add(imageSpeeds, "reloading", sprite_get_number(spr_npc1_reload)/(reloadingTime*room_speed));
ds_map_add(imageSpeeds, "delay_firing", 1);

scr_createLightCollisionCircle(50,68,50,108);