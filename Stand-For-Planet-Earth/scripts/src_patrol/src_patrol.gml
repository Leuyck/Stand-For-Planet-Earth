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
	}
	else {
		state = "standing";
		src_wait();
	}
}
else if(path_exists(path)) {
	if(point_distance(x, y, nextPositionX, nextPositionY) < sprite_width / 4) {
		positionInPath++;
		nextPositionX = path_get_point_x(path, positionInPath);
		nextPositionY = path_get_point_y(path, positionInPath);
		if(positionInPath > path_get_number(path) || (nextPositionX == 0 && nextPositionY == 0)) {
			path_delete(path);				
			state = "standing";
			src_wait();
			return;
		}
	}

	mp_potential_step(nextPositionX, nextPositionY, patrolSpeed, false);
	
	image_angle = direction;
	
	/*if( positionInPath + 1 <= path_get_number(path) ) {
		var posX = path_get_point_x(path, positionInPath + 1);
		var posY = path_get_point_y(path, positionInPath + 1); 
		image_angle = point_direction(x, y, posX, posY);
	}
	else {
		image_angle = direction;
	}*/
}