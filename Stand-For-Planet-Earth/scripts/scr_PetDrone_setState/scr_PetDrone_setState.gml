///scr_PetDrone_setState();

if(job == "patrol")
{
	state = "passive";
}
else if (job == "attack")
{
	if (state == "passive")
	{
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
else if (job == "attacking")
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