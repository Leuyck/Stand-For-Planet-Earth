/// @description 
parent = noone;

currentCharge = 0;
loaded = false;

numberOfFrameBeforeAttacking = sprite_get_number(spr_plasmaBawl_loading);

plasmaYcoordinatesWalking = ds_list_create();
ds_list_add(plasmaYcoordinatesWalking,137,137,137,138,138,139,139,139,139,136,136,129,129,129,128,128,127,127,127,127,129,129);

plasmaXcoordinatesFire2 = ds_list_create();//191 132
ds_list_add(plasmaXcoordinatesFire2,141,158,158,147);