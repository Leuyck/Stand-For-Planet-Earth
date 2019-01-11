///scr_map_ini(firstRoom)

var firstRoomOfTheLevel = argument[0]

scr_showNotification ("Joined world " + room_get_name(room), c_green);
//scr_nextRoom_previousRoom();

global.inWorld = true;
global.currentWorld = room;
global.firstRoomOfTheLevel = firstRoomOfTheLevel;
global.npcIdCounter = 0;
global.creativeMod = false;
global.gamePaused = false;

if(firstRoomOfTheLevel)
{
	if(instance_exists(obj_score)) then instance_destroy(obj_score);
	instance_create_layer(0,0,"layer_code",obj_score);
    //scr_requestToEnterRoom();
}

// Création du GUI et ChatTyping
if(!instance_exists(obj_gui)) then instance_create (x, y, obj_gui);
if(!instance_exists(obj_roomsMemory)) then instance_create (x, y, obj_roomsMemory);
if(!instance_exists(obj_camera)) then instance_create(x,y,obj_camera);
if(!instance_exists(obj_spawner))then instance_create(x,y,obj_spawner);
if(!instance_exists(obj_grid)) then instance_create(0, 0, obj_grid);