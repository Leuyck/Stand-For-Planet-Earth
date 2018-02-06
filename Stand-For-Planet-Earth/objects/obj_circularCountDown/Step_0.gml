/// @description 
if(instance_exists(parent)){
	x=parent.x+xOffset;
	y=parent.y+yOffset;
}else{
	instance_destroy()	
}

if(timeRemaining <= -1){
	timeRemaining = duration;
}
if(start){
	timeRemaining-=1/room_speed;	
}

if(timeRemaining == 0){
	with(parent){
		if(asset_get_index(object_get_name(object_index)) == obj_turret_EngiBot){
			state ="reployed";
			sprite_index = spr_turet_deploy;
			image_index = image_number-1;
		}else{
			instance_destroy();	
		}
	}
	instance_destroy();
}