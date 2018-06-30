event_inherited();

fear = false;
fearObject = noone;
fearObjectX = noone;
fearObjectY = noone;
heroSpotted = false;

escapeInstance = noone;

scaryPeople = ds_list_create();
scaryObject = ds_list_create();
ds_list_add(scaryObject,obj_bullet_base);
ds_list_add(scaryObject,obj_bullet_batte_parent);
ds_list_add(scaryObject,obj_npc_mort);

alarm[5] = -1; ///fear duration
alarm[6] = -1; ///run duration