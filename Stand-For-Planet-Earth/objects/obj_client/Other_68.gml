/// Async Networking Event of Object : ObjClient

var currentSocket = ds_map_find_value (async_load, "id");

// Le socket que l'on utilise depuis async_load est bien le socket du client.
if(currentSocket == self.socket) {
    
    var type_event = ds_map_find_value (async_load, "type");
    switch (type_event) {
    
        case network_type_connect :
            show_debug_message("Socket connected to server.");
            break;
            
        case network_type_disconnect:
            show_debug_message("Socket disconnected from server.");
            room_goto(rm_mainMenu);
			instance_destroy();
            break;
        
        case network_type_data :
            var buffer = ds_map_find_value (async_load, "buffer");
            buffer_seek (buffer, buffer_seek_start, 0);
            scr_receivedPacket_client (buffer);
            break;
            
        default :
            show_debug_message("Unknown message received from server socket : " + string(type_event));
            break;
    }
}

