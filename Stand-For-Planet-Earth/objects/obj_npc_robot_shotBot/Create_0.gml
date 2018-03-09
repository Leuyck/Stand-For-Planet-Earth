event_inherited();

weaponPosX = 161-82;                    //différence de position entre X et weaponX
weaponPosY = 63-98;                     //différence de position entre Y et weaponY

scr_setFireImageSpeed(spr_npc_shotBot_shot,shot1PerSec);
scr_setMoveImageSpeed(spr_npc_shotBot_marche,normalSpd,128);

ds_map_add(sprites, "standing", spr_npc_shotBot_marche);
ds_map_add(sprites, "walking", spr_npc_shotBot_marche);
ds_map_add(sprites, "chasing", spr_npc_shotBot_marche);
ds_map_add(sprites, "dashing", spr_npc_shotBot_marche);
ds_map_add(sprites, "firing", spr_npc_shotBot_shot);
ds_map_add(sprites, "reloading", spr_npc1_reload);
ds_map_add(sprites, "delay_firing", spr_npc_shotBot_shot);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "chasing", 2);
ds_map_add(imageSpeeds, "dashing", 0.5);
ds_map_add(imageSpeeds, "firing", 1);
ds_map_add(imageSpeeds, "reloading", 0);
ds_map_add(imageSpeeds, "delay_firing", 1);

