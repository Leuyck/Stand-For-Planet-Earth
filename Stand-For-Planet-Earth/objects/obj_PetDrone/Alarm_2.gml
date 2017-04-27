///attack delay alarm
if(instance_exists(obj_server))
{
	if(job =="attacking")
	{
		if(currentTankFuel < tankSpace)
		{
			currentTankFuel += damagePerTic
			with (target)
			{
				self.currentHealth -= other.damagePerTic;
			}
			alarm[2] = ticDuration;
		}
		else if(currentTankFuel>=tankSpace)
		{
			currentTankFuel = tankSpace
			alarm[2] = -1;
			state = "full";
			job = "waitForHeal";
			target = noone;
		}
	}
	else if(job =="healing")
	{
		if(currentTankFuel >0)
		{
			currentTankFuel -= damagePerTic
			with (target)
			{
				self.currentHealth += other.damagePerTic;
			}
			alarm[2] = ticDuration;
		}
		else if(currentTankFuel<=0)
		{
			currentTankFuel = 0
			alarm[2] = -1;
			state = "empty";
			job = "patrol";
			target = noone;
		}
	}
}