scr_room_menu_ini();
scr_room_chat_ini()

buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_PLAYER_ENTERED_CHOOSE_HERO_MENU_MESSAGE);
buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));