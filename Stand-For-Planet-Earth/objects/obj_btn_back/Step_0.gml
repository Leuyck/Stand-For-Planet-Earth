event_inherited()
if(instance_exists(obj_controller_parent)){
	with(obj_controller_parent){
		if(self.mainController == true && self.cancelKey){
			if(room == rm_choseHero){
				var btnAllDisable = true;
				with(obj_btn_player){
					if(self.enable == true) then btnAllDisable = false;
				}
				if(btnAllDisable == true){
					other.click = true;
				}
			}else{
				other.click = true;	
			}
		}
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