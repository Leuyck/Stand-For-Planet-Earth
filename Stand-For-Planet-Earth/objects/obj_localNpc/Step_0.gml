if(global.gamePaused) {
	state = "standing";
}
else if(active == true) {
	scr_setNPCBehaviourActions();
	scr_destroyNpcWhenDead();
}

