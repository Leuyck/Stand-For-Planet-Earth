if(global.gamePaused == false){
	if(active ==true){
		scr_setBehaviourActions();
	}else{
		if(distance_to_object(obj_localPlayer)<=activationRange){
			active = true;
		}
	}
		scr_setSpritesNpcSoldier();
}

event_inherited();
