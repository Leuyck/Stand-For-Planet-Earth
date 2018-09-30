if(global.gamePaused) {
	state = "standing";
}
else if(active) {
	scr_setBossBehaviourActions();
	if(behaviour == noone) {
		scr_setNPCBehaviourActions();
	}
}