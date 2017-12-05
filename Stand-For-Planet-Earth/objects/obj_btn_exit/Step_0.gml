/// @description 
event_inherited();
if(click){
	audio_stop_all();
	if (global.inWorld == true || room == rm_recapitulatif)
	{
		scr_exitLevel(rm_mainMenu)
	}
	else
	{
	    game_end()
	}
	click = false;
}
