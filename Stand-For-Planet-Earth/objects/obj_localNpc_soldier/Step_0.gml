if(global.gamePaused == false){
	if (instance_exists (obj_server))
	{
		if(active ==true){
			scr_setBehaviourActions();
		}else{
			if(distance_to_object(obj_localPlayer)<=activationRange){
				active = true;
			}
		}
			scr_setSpritesNpcSoldier();
	}
}

event_inherited();
