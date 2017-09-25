///scr_PetDrone_activeMovements();
var grid = gridObject.grid;

if(instance_exists(target))
{
	if(object_is_ancestor(target.object_index, obj_localNpc) == true)
	{
		job = "attack";
	}
	else if (object_is_ancestor(target.object_index, obj_localPlayer) == true)
	{
		job = "heal";
	}
}
	
if(job=="attack")
{
	if(currentTankFuel<tankSpace)
	{
		if(collision_point(x,y,target,false,true)==noone)
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
			path_end()
			job = "attacking"
			scr_PetDrone_attack_heal();
		}
	}
	else
	{
		alarm[0] = 1;
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
			path_end();
			job = "healing"
			scr_PetDrone_attack_heal();
		}
	}
	else
	{
		alarm[0] = 1;
		job = "patrol"
		target = noone;
	}
}	