///scr_PetDrone_activeMovements();

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
}else{
	path_end();
	target = noone;
}
	
if(job=="attack")
{
	if(currentTankFuel<tankSpace)
	{
		if(collision_point(x,y,target,false,true)==noone)
		{
			scr_PetDrone_setPathToTarget();
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
		target = 0;
	} 
}
else if(job == "heal")
{
	if(currentTankFuel>0)
	{
		if(distance_to_object(target)>attackRange)
		{
			scr_PetDrone_setPathToTarget();
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