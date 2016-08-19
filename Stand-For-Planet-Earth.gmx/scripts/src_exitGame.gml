instance_destroy();

with (obj_client)
{
    network_destroy (socket);
    buffer_delete (global.bufferNetwork);
    instance_destroy();
}

with(obj_server)
{
    network_destroy (server);
    buffer_delete (global.bufferServer);
    instance_destroy()
}

scr_transitionMapTo(rm_mainMenu);
