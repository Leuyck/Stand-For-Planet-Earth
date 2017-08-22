///if room = rm_pauseMenu

if (global.inWorld == true || room == rm_recapitulatif)
{
	scr_exitLevel(rm_mainMenu)
}
else
{
    game_end()
}


