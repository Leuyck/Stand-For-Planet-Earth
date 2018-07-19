/// scr_runAwayFromHero();

if(!path_exists(path)) {
	var closestEnnemy = instance_nearest(x, y, obj_localPlayer);
	if(closestEnnemy == noone) {
		closestEnnemy = instance_nearest(x, y, obj_localNpc_soldier);
	}
	if(closestEnnemy != noone && distance_to_object(closestEnnemy) < viewRange) {
		var angleOfFearObject = point_direction(closestEnnemy.x, closestEnnemy.y, self.x, self.y);
		var escapeAngle = random_range(-20, 20) + angleOfFearObject;
		var escapePoint = scr_getFarestPointInRoom(x, y, escapeAngle);
		var escapePointX = escapePoint[0];
		var escapePointY = escapePoint[1];
		
		if(distance_to_point(escapePointX, escapePointY) >= sprite_width / 4) {
			path = path_add();
		
			if (mp_grid_path(obj_grid.grid, path, x, y, escapePointX, escapePointY, true)) {
				path_set_kind(path, 1);
				path_set_precision(path, 8);
				positionInPath = 1;
				nextPositionX = path_get_point_x(path, positionInPath);
				nextPositionY = path_get_point_y(path, positionInPath);
				state = "walking";
				return;
			}
			else {
				path_delete(path);
			}
		}

	}
	
	src_wait();	
}

else {
	scr_moveToNextPointInPath(fearSpeed);
}