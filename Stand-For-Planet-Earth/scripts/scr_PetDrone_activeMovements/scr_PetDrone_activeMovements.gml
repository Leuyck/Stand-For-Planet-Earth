///scr_PetDrone_activeMovements();
if(instance_exists(target))
{
	if(job=="attack")
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
			else
			{
				job = "attacking"
				scr_PetDrone_attack_heal();
			}
		}
		else
		{
			job = "waitForHeal"
			target = noone;
		} 
	}
	else if(job == "heal")
	{
		if(currentTankFuel>0)
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
			else
			{
				job = "healing"
				scr_PetDrone_attack_heal();
			}
		}
		else
		{
			job = "patrol"
			target = noone;
		}
	}	
}	