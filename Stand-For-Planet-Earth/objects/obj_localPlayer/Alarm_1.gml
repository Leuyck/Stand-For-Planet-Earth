/// @description send coordinates to server
//if(global.playerId == self.playerId && instance_exists(obj_client))
//{
//    buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
//    buffer_write(global.bufferNetwork, buffer_u8, S_PLAYER_COORDINATES_UPDATED_MESSAGE);
//    buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
//    buffer_write(global.bufferNetwork, buffer_f32, x);
//    buffer_write(global.bufferNetwork, buffer_f32, y);
//    buffer_write(global.bufferNetwork, buffer_u32, sprite_index);
//    buffer_write(global.bufferNetwork, buffer_u8, image_index);
//    buffer_write(global.bufferNetwork, buffer_f32, image_angle);
//    buffer_write(global.bufferNetwork, buffer_f32, direction);
//    buffer_write(global.bufferNetwork, buffer_string, state);
//    buffer_write(global.bufferNetwork, buffer_u32, currentHealth);
//    buffer_write(global.bufferNetwork, buffer_u32, currentEnergy);
//    buffer_write(global.bufferNetwork, buffer_u32, currentMaxEnergy);
//    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
//}
//alarm[1] = 1;

