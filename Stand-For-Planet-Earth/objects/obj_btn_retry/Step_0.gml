///if room = rm_pauseMenu
event_inherited()
var actualRoom = room;
if(click){
	if (global.inWorld == true || room == rm_recapitulatif)
	{
		with(obj_localPlayer)
		{
		    instance_destroy();
		}
		instance_create(x,y,obj_cleaningRoom);
		obj_cleaningRoom.roomToGo = actualRoom;
	}
	else
	{
	    game_end()
	}
	click = false;
}
