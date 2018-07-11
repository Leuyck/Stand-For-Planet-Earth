///scr_getBatteTypeForFire2();
var batteType = obj_bullet_batte_d
ds_map_replace(sprites,"firing2",spr_BatBot_fire2_d);
    
if(numberOfBatte == 1){
	batteType = obj_bullet_batte_g
	ds_map_replace(sprites,"firing2",spr_BatBot_fire2_g);
}
return batteType;