///scr_map_ini(firstRoom)

var firstRoomOfTheLevel = argument[0]

scr_showNotification ("Joined world " + room_get_name(room), c_green);
scr_nextRoom_previousRoom();

global.inWorld = true;
global.currentWorld = room;
global.firstRoomOfTheLevel = firstRoomOfTheLevel;
global.npcIdCounter = 0;
global.creativeMod = false;
global.gamePaused = false;

if(firstRoomOfTheLevel)
{
    //scr_requestToEnterRoom();
}

with(obj_controller_parent){
	if(self.heroSelected !=noone){
		var spawn = scr_getHeroSpawn(self.playerNumber);
		var player = instance_create_depth(spawn.x,spawn.y,0,self.heroSelected)
		player.playerNumber = self.playerNumber;
		player.controller = self.id;
		var healthBar = scr_createHealthBar(player.playerNumber);
		healthBar.hero = player;
	}
}

// Création du GUI et ChatTyping
if(!instance_exists(obj_gui)) then instance_create (x, y, obj_gui);
if(!instance_exists(obj_roomsMemory)) then instance_create (x, y, obj_roomsMemory);
if(!instance_exists(obj_camera)) then instance_create(x,y,obj_camera);