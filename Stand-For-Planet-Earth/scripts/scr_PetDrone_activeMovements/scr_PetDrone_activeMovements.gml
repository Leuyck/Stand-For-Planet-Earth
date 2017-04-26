///scr_PetDrone_activeMovements();
if(instance_exists(target))
{
	if(currentTankFuel<tankSpace)
	{
		if(distance_to_object(target)>attackRange)
		{
		    patrolx = target.x
		    patroly = target.y

		    if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
		    {
		        path_start(path, spd, path_action_stop, true);
		    }
		}
		else if (job == "attack")
		{
			{
				job = "attacking"
				scr_PetDrone_attack();
			}
		}
	}
	else
	{
		job = "waitForHeal"
		target = noone;
	} 	
}	
else
{
	job = "patrol"
}
