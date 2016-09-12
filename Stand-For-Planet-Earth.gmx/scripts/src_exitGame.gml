instance_destroy();

with (obj_client)
{
    network_destroy (socket);
    buffer_delete (global.bufferNetwork);
    instance_destroy();
}
