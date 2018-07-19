///@description scr_patrol();

// Pausing the patrol
if(alarm[0] > 0) {
	state = "standing";
	src_wait();
}

// The patrol just finished
else if (!path_exists(path) && alarm[0] == -1) {
	alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5, 2));
	state = "standing";
	src_wait();
}

// The pause is ended.
else if(!path_exists(path)) {
	var newPath = scr_buildNpcPatrolPath();
	if(newPath != noone) {
		scr_initNpcPath(newPath);
		state = "walking";
	}
	else {
		state = "standing";
		src_wait();
	}
}
else if(path_exists(path)) {
	scr_moveToNextPointInPath(patrolSpeed);
}