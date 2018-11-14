if(global.gamePaused) {
	state = "standing";
}
else if(active) {
	if(!drawHealthBar && scr_isInView(10)) then drawHealthBar = true;
	scr_setBossBehaviourActions();
	if(behaviour == noone) {
		scr_setNPCBehaviourActions();
	}
}