/// @description 
if(parent!=noone){
	if(object_get_parent(parent.object_index)== obj_localPlayer){
		if(parent.image_index >= 4){
			image_speed = 1;
			visible = true;
		}
	}else{
		image_speed = 1;
		visible = true;
	}
}

if(image_index>image_number-1){
	instance_destroy();
}