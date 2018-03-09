///scr_PetDrone_setState();

if(job == "waitForAttack"){
	if (state == "empty" || state == "hitting" ||state == "healing"){
		ds_map_replace(imageSpeeds,"swapping",-1);
		image_index = sprite_get_number(spr_PetDrone_swap)-1;
		state = "swapping"
	}else if(state == "swapping"){
		if(ds_map_find_value(imageSpeeds,"swapping")==-1){
			if(image_index < 1){
				state = "passive"
			}
		}else if (ds_map_find_value(imageSpeeds,"swapping")==1){
			ds_map_replace(imageSpeeds,"swapping",-1);
		}    
	}else{
	    state = "passive";
	}
}else if (job == "waitForHeal" || job == "heal"){
	state = "full"
	image_index = 0;
}else if (job == "attack"){
	if (state == "passive"){
		ds_map_replace(imageSpeeds,"swapping",1);
		image_index = 0;
		state = "swapping";
	}else if(state == "swapping"){
		if(ds_map_find_value(imageSpeeds,"swapping")==1){
			if(image_index == sprite_get_number(spr_PetDrone_swap)-1){
				state = "empty"
			}
		}else if(ds_map_find_value(imageSpeeds,"swapping")==-1){
			ds_map_replace(imageSpeeds,"swapping",1);
		}  
	}else{
		state = "empty";
		image_index = 0;
	}
}
else if (job == "attacking"){
	if(state =="empty"){
		image_index = 0
		state = "hitting";
	}else{
		state = "hitting";
	}
}else if(job == "healing"){
	if(state =="full"){
		image_index = 0
		state = "healing";	
	}else{
		state = "healing";	
	}
}
