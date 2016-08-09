///scr_openDoor(button)


var button = argument[0]

if (useKey)
{ 
    var btn = instance_place(x,y,button);
    if (btn != noone)
    {
        if (instance_exists (obj_server))//if we are the server
        {
            for (var i = 0; i < ds_list_size (global.players); i++)
                {
                    var storedPlayerSocket = ds_list_find_value (global.players, i);
                 
                    buffer_seek (global.bufferServer , buffer_seek_start, 0);
                    buffer_write(global.bufferServer, buffer_u32, 12);
                    buffer_write(global.bufferServer, buffer_u8, btn);
                                    
                    network_send_packet (storedPlayerSocket, global.bufferServer, buffer_tell(global.bufferServer));
                }
        }
        
        scr_openDoor(btn);
    }
}
