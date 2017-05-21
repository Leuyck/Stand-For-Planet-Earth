///scr_PetDrone_setState();

if(job == "patrol")
{
	if (state == "empty")
	{
		ds_map_replace(imageSpeeds,"swaping",-0.25);
		image_index = sprite_get_number(spr_PetDrone_swap)-1;
		state = "swapping"
	}
	else if(state == "swapping" && image_index == 0)
	{
	    state = "passive"
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
		ds_map_replace(imageSpeeds,"swaping",0.25);
		image_index = 0;
		state = "swapping";
	}
	else if(state == "swapping" && image_index == sprite_get_number(spr_PetDrone_swap)-1)
	{
	    state = "empty"
	}   
	else if (state != "swapping")
	{
	    state = "empty"
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