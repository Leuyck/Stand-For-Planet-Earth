/// @description 
range = bbox_right-bbox_left;
event_inherited();
sprite_index = asset_get_index("spr_PetDrone_explosion"+string(level));

if(image_index >=7){
	var listOfHitted = scr_collision_circle_list(x,y,range/2,obj_localPlayer,true,true);
	if(listOfHitted != noone){
		for (var i = 0; i < ds_list_size(listOfHitted); ++i) {
		    var target =ds_list_find_value(listOfHitted,i);
			if(target.currentHealth < target.maxHealth && target.currentHealth>0 && target.state != "dead"){
				target.percentOfOneHp += 4/room_speed;
			}
		}
		ds_list_destroy(listOfHitted);
	}
}
