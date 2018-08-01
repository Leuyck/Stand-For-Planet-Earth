/// @description 

// Inherit the parent event
event_inherited();


var player = instance_place(x,y,obj_localPlayer);
if(player != noone){
	for(var i = 0; i<2; ++i){
		if(ds_list_find_value(player.bonusList,i) == noone){
			instance_destroy();
			ds_list_replace(player.bonusList,i,bonus);
			break;
		}
	}
}