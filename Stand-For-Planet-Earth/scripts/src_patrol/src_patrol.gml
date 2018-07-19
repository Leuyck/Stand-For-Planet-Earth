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
	var newPath = scr_buildNpcPath();
	if(newPath != noone) {
		path = newPath;
		positionInPath = 1;
		nextPositionX = path_get_point_x(path, positionInPath);
		nextPositionY = path_get_point_y(path, positionInPath);
		state = "walking";
		alarm[1] = maxTimeToReachNextPosition * room_speed; // alarme gérant un blocage pour aller au point du path.
	}
	else {
		state = "standing";
		src_wait();
	}
}
else if(path_exists(path)) {
	scr_moveToNextPointInPath(patrolSpeed);
}