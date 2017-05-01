/// @description send coordinates to server
with(parent)
{
	if(global.playerId == self.playerId && instance_exists(obj_client))
	{
	    buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
	    buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_PETDRONE_UPDATED);
	    buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
	    buffer_write(global.bufferNetwork, buffer_f32, other.x);
	    buffer_write(global.bufferNetwork, buffer_f32, other.y);
	    buffer_write(global.bufferNetwork, buffer_u32, other.sprite_index);
	    buffer_write(global.bufferNetwork, buffer_u8, other.image_index);
	    buffer_write(global.bufferNetwork, buffer_f32, other.direction);
	    buffer_write(global.bufferNetwork, buffer_u32, other.currentTankFuel);
	    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
	}
	alarm[1] = 1;
}