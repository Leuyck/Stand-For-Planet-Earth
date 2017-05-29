/// send a ping request

buffer_seek  (global.bufferNetwork, buffer_seek_start, 0);
buffer_write (global.bufferNetwork, buffer_u8, PING_MESSAGE);
buffer_write (global.bufferNetwork, buffer_u32, current_time);
network_send_packet (self.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));

alarm[0] = room_speed


