

scr_room_world_ini(true);

scr_createMurEpaisFromTile("tiles_mur_epais");
scr_createMurFinFromTile("tiles_mur_fin");

if(!instance_exists(obj_ambientShadow)) then instance_create_layer(0,0,"layer_lumiere",obj_ambientShadow);