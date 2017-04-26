///attack delay alarm

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