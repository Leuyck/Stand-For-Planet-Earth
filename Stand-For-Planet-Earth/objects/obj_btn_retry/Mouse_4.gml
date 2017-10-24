///if room = rm_pauseMenu

if (global.inWorld == true || room == rm_recapitulatif)
{
	with(obj_localPlayer)
	{
	    instance_destroy();
	}
	with(obj_player){
		self.playerInGame = false;
	}
	instance_create(x,y,obj_cleaningRoom);
	obj_cleaningRoom.roomToGo = rm_choseHero;
}
else
{
    game_end()
}


