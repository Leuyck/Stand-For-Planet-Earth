if(global.gamePaused) {
	event_inherited();
}
else if(active) {
	scr_setSoldierNPCBehaviourActions();
	if(behaviour == noone) {
		event_inherited();	
	}
}