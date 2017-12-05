///scr_PetDrone_setState();

if(job == "patrol")
{
	if (state == "empty" || state == "hitting")
	{
		ds_map_replace(imageSpeeds,"swapping",-0.25);
		image_index = sprite_get_number(spr_PetDrone_swap)-1;
		state = "swapping"
	}
	else if(state == "swapping")
	{
		if(ds_map_find_value(imageSpeeds,"swapping")==-0.25){
			if(image_index == 0){
				state = "passive"
			}
		}else if (ds_map_find_value(imageSpeeds,"swapping")==0.25){
			ds_map_replace(imageSpeeds,"swapping",-0.25);
		}    
	}   
	else if (state != "swapping")
	{
	    state = "passive"
	}
}
else if (job == "attack")
{
	if (state == "passive")
	{
		ds_map_replace(imageSpeeds,"swapping",0.25);
		image_index = 0;
		state = "swapping";
	}
	else if(state == "swapping")
	{
		if(ds_map_find_value(imageSpeeds,"swapping")==0.25){
			if(image_index == sprite_get_number(spr_PetDrone_swap)-1){
				state = "empty"
			}
		}else if(ds_map_find_value(imageSpeeds,"swapping")==-0.25){
			ds_map_replace(imageSpeeds,"swapping",0.25);
		}  
	}   
	else if (state != "swapping")
	{
		if(currentTankFuel<tankSpace){
			state = "empty";
		}else{
			state = "full";
		}
	}
}
else if (job == "attacking" || job == "healing")
{
	state = "hitting";
}
else if (job == "waitForHeal")
{
	if (currentTankFuel == tankSpace)
	{
		state = "full"
	}
	else
	{
		state = "empty"
	}
}