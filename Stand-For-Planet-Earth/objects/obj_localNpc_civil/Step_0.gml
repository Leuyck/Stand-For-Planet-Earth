if(global.gamePaused) {
	event_inherited();
}
else if(active) {
	scr_setCivilNPCBehaviourActions();
	if(behaviour == noone) {
		event_inherited();
	}
}


