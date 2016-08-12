///scr_map_ini(spawnX, spawnY, useLight)

var spawnX = argument[0]
var spawnY = argument[1]
var useLight = argument[2]

scr_showNotification ("Joined game world")

// create our player randomly in the room
if (!instance_exists(obj_server)) // we are client
{    
    buffer_seek(global.bufferNetwork, buffer_seek_start, 0);
    buffer_write (global.bufferNetwork, buffer_u8, 6);
    buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
    buffer_write (global.bufferNetwork, buffer_string, global.character);
    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork))
        
    with (obj_localNpc1)
    {
    instance_destroy ();
    }
}
    else // we are server
{
    instance_create(spawnX, spawnY, obj_localPlayer);
}

if (useLight)
{
    if (!instance_exists(obj_engine))
    {
        instance_create(x, y, obj_engine);
    }
}
