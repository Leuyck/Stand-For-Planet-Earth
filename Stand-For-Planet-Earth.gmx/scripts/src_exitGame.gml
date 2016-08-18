instance_destroy();
    
buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
buffer_write (global.bufferNetwork, buffer_u8, 5);
buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));

with (obj_client)
{
    network_destroy (socket);
    buffer_delete (global.bufferNetwork);
    instance_destroy();
}

if (instance_exists(obj_server))
{
    with(obj_server)
    {
        network_destroy (server);
        buffer_delete (global.bufferServer);
        ds_list_destroy (global.players);
        instance_destroy()
    }
}

scr_transitionMapTo(rm_mainMenu);
