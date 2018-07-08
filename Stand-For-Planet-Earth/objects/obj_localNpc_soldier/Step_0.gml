if(global.gamePaused == false){
	if(active == false) {
		if (distance_to_object(obj_localPlayer) <= activationRange) {
			active = true;
		}
	}
	if (active == true) {
		scr_setBehaviourActions();
		if(behaviour == noone) {
			event_inherited();	
		}
		else {
			scr_setSpritesNpcSoldier();
		}
	}
}

event_inherited();
