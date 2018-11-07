/// @description 
event_inherited();

ds_map_add(sprites, "standing", spr_npc_scientifique_marche);
ds_map_add(sprites, "walking", spr_npc_scientifique_marche);
ds_map_add(sprites, "running", spr_npc_scientifique_cours);
ds_map_add(sprites, "hide", spr_npc_scientifique_marche);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "running", 1);
ds_map_add(imageSpeeds, "hide", 0);

//scr_createLightCollisionCircle(44,77,43,109);