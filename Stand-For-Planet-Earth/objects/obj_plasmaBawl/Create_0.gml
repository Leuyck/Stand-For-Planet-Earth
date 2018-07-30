/// @description 
parent = noone;

currentCharge = 0;
loaded = false;

numberOfFrameBeforeAttacking = sprite_get_number(spr_plasmaBawl_loading);

plasmaYcoordinatesWalking = ds_list_create();
ds_list_add(plasmaYcoordinatesWalking,158,158,158,159,159,160,160,160,160,157,157,148,148,148,147,147,146,146,146,146,149,149);

plasmaXcoordinatesFire2 = ds_list_create();
ds_list_add(plasmaXcoordinatesFire2,162,183,183,170);