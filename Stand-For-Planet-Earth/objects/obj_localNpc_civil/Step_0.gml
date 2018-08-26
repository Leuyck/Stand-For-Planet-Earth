if(global.gamePaused) {
	event_inherited();
}
else if(active) {
	behaviour = scr_getNpcBehaviourCivil();

	if(behaviour == "run away") then scr_runAwayFromHero();
	if(behaviour == noone) {
		event_inherited();
	}
}


