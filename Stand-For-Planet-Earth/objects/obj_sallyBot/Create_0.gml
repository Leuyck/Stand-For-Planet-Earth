/// @description 

event_inherited();
level = 1;
fire1Coup = 1;

ds_map_add(sprites, "standing", spr_sallyBot_1_standing);
ds_map_add(sprites, "walking", spr_sallyBot_1_marche);
ds_map_add(sprites, "fire1", spr_sallyBot_1_AttackD1);
ds_map_add(sprites, "fire2", spr_sallyBot_1_fire2);
ds_map_add(sprites, "respire", spr_sallyBot_2_respire);
ds_map_add(sprites, "transformation", spr_sallyBot_transformation);

ds_map_add(imageSpeeds, "standing", 0);
ds_map_add(imageSpeeds, "walking", 1);
ds_map_add(imageSpeeds, "fire1", 1);
ds_map_add(imageSpeeds, "fire2", 1);
ds_map_add(imageSpeeds, "respire", 1);
ds_map_add(imageSpeeds, "transformation", 1);