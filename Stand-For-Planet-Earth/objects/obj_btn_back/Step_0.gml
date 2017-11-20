event_inherited()
if(instance_exists(obj_controller)){
	if(obj_controller.bKey && room != rm_choseHero1){
		click = true;	
	}
}
if(click){
	if (targetRoom == rm_multi || targetRoom == rm_mainMenu)
	{
	    scr_closeConnectionToServer();
	}

	// Go to targetRoom
	scr_transitionToNextRoom(targetRoom)
	click = false;
}