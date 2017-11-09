event_inherited()
if(click){
	if (targetRoom == rm_multi || targetRoom == rm_mainMenu)
	{
	    scr_closeConnectionToServer();
	}

	// Go to targetRoom
	scr_transitionToNextRoom(targetRoom)
	click = false;
}
