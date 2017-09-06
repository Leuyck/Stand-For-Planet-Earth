///scr_map_ini(firstRoom)

var firstRoomOfTheLevel = argument[0]

scr_showNotification ("Joined world " + room_get_name(room), c_green);
scr_nextRoom_previousRoom();

global.inWorld = true;
global.currentWorld = room;
global.firstRoomOfTheLevel = firstRoomOfTheLevel;
global.npcIdCounter = 0;
global.creativeMod = false;

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
if(!instance_exists(obj_roomsMemory)) then instance_create (x, y, obj_roomsMemory);
if(!instance_exists(obj_camera)) then instance_create(x,y,obj_camera);

if(firstRoomOfTheLevel)
{
    scr_requestToEnterRoom();
}