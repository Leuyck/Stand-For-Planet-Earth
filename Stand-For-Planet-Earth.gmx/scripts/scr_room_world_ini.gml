///scr_map_ini(spawnX, spawnY, useLight)

var useLight = argument[0]

scr_showNotification ("Joined world " + room_get_name(room), c_green);

global.inWorld = true

// create our player in the room
if (!instance_exists(obj_server)) // we are client
{    
    with (obj_localNpc)
    {
        instance_destroy ();
    }
}

// Création du GUI et ChatTyping
instance_create (x, y, obj_gui);
instance_create (x, y, obj_grid);
instance_create (x, y, obj_localPlayer_tracker);

// Send to the server that we entered the map
buffer_seek(global.bufferNetwork, buffer_seek_start, 0);
buffer_write (global.bufferNetwork, buffer_u8, S_PLAYER_REQUESTS_TO_ENTER_MAP_MESSAGE);
buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork))
    

if (useLight)
{
    if (!instance_exists(obj_engine))
    {
        instance_create(x, y, obj_engine);
    }
}
