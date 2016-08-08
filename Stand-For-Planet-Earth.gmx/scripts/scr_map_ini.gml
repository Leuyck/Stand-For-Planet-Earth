///scr_map_ini(useLight)
var useLight = argument[0]

scr_showNotification ("Joined game world")

    var roomLoaded= 1;
    // create our player randomly in the room
  if (!instance_exists(obj_server)) // we are client
{    
    instance_create(2048, 7776, obj_localPlayer);
    instance_create (x, y, obj_gui_client);     
    
    
    //tell the server we're joining a game
    buffer_seek(global.bufferNetwork, buffer_seek_start, 0);
    buffer_write (global.bufferNetwork, buffer_u8, 6);
    buffer_write (global.bufferNetwork, buffer_string, global.playerPseudo);
    buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
    buffer_write (global.bufferNetwork, buffer_u8, roomLoaded);
    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork))
        
    with (obj_localNpc1)
    {
    instance_destroy ();
    }
    
}
    else // we are server
{
    instance_create(2048, 7776, obj_localPlayer);
    instance_create (x, y, obj_gui_server);  
}

if (useLight)
{
    //création de l'objet engine si il n'existe pas.
    if (!instance_exists(obj_engine))
    {
        instance_create(x, y, obj_engine);
    }
}
//création de l'objet chatTyping si il n'existe pas.
if (!instance_exists (obj_chatTyping))
{
    instance_create (x, y, obj_chatTyping);
}
