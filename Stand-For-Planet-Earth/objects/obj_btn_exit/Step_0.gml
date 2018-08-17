/// @description 
event_inherited();
if(click){
	audio_stop_all();
	if (room == rm_mainMenu){
		game_end()
	}
	else
	{
	    scr_exitLevel(rm_mainMenu)
	}
	click = false;
}
