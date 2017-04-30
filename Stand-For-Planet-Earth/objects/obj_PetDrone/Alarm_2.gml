///attack delay alarm

if(job =="attacking")
{
	if(currentTankFuel < tankSpace)
	{
		currentTankFuel += damagePerTic
		
		with(parent)
		{
			if(global.playerId == self.playerId && instance_exists(obj_client))
			{
			    buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
			    buffer_write(global.bufferNetwork, buffer_u8, S_PETDRONE_ATTACK_MESSAGE);
			    buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
			    buffer_write(global.bufferNetwork, buffer_u32, other.target);
			    buffer_write(global.bufferNetwork, buffer_u8, other.damagePerTic);
			    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
			}
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
		with(parent)
		{
			if(global.playerId == self.playerId && instance_exists(obj_client))
			{
			    buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
			    buffer_write(global.bufferNetwork, buffer_u8, S_PETDRONE_HEAL_MESSAGE);
			    buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
			    buffer_write(global.bufferNetwork, buffer_u32, other.target);
			    buffer_write(global.bufferNetwork, buffer_u8, other.damagePerTic);
			    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
			}
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