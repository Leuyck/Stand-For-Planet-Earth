///scr_map_ini(firstRoom, useLight)

var firstRoomOfTheLevel = argument[0]
var useLight = argument[1]

scr_showNotification ("Joined world " + room_get_name(room), c_green);
scr_nextRoom_previousRoom()

global.inWorld = true;
global.currentWorld = room;
global.firstRoomOfTheLevel = firstRoomOfTheLevel;
global.npcIdCounter = 0;

// create our player in the room
if (!instance_exists(obj_server)) // we are client
{    
    with (obj_localNpc)
    {
        instance_destroy ();
    }
}

// Création du GUI et ChatTyping
if(!instance_exists(obj_gui)) then instance_create (x, y, obj_gui);
if(!instance_exists(obj_grid)) then instance_create (x, y, obj_grid);
if(!instance_exists(obj_localPlayer_tracker)) then instance_create (x, y, obj_localPlayer_tracker);
if(!instance_exists(obj_roomsMemory)) then instance_create (x, y, obj_roomsMemory);

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
