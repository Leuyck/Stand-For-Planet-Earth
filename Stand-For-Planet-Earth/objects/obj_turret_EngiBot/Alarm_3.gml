///@descr Réseaux
/*
if(global.playerId == self.turretId)
{
    buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
    buffer_write(global.bufferNetwork, buffer_u8, S_TURRET_COORDINATES_UPDATED_MESSAGE);
    buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
    buffer_write(global.bufferNetwork, buffer_f32, x);
    buffer_write(global.bufferNetwork, buffer_f32, y);
    buffer_write(global.bufferNetwork, buffer_bool, self.deploy);
    buffer_write(global.bufferNetwork, buffer_f32, direction);
    buffer_write(global.bufferNetwork, buffer_u32, currentHealth);
    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
}
alarm[3] = 1;

