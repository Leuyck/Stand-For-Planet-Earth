///scr_addInstanceIntoMapAndListForLight(instance,map,list);
var instance = argument[0];
var map = argument[1];
var list = argument[2];

if(is_undefined(ds_map_find_value(map,instance)) == true){
	var coordinates = ds_map_create();
	coordinates[? "x1"] = noone;
	coordinates[? "y1"] = noone;
	coordinates[? "x2"] = noone;
	coordinates[? "y2"] = noone;
	coordinates[? "xx"] = noone;
	coordinates[? "xx"] = noone;
	ds_map_add_map(map,instance,coordinates);
	ds_list_add(list,instance);
}	