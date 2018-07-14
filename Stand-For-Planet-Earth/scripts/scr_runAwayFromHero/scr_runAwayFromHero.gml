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
		var escapePointX = string_extract_X(escapePoint);
		var escapePointY = string_extract_Y(escapePoint);
		
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
	if(alarm[1] == -1 || point_distance(x, y, nextPositionX, nextPositionY) < sprite_width / 4) {
		positionInPath++;
		nextPositionX = path_get_point_x(path, positionInPath);
		nextPositionY = path_get_point_y(path, positionInPath);
		
		var isNextPositionInvalid = positionInPath > path_get_number(path) || (nextPositionX == 0 && nextPositionY == 0); // S'il n'y a plus de points valides dans le path
		var hasReachMaxAttempt = alarm[1] == -1 && failedAttemptToReachPointInPathCount == maxFailedAttemptToReachPointInPath; // On a échoué N fois dans la tentative d'atteindre le prochain point
		if(isNextPositionInvalid || hasReachMaxAttempt) {
			path_delete(path);
			failedAttemptToReachPointInPathCount = 0;
			src_wait();
			return;
		}
		else {
			// Si on n'a pas réussi à atteindre le point suivant, on incrémente le nombre de tentative
			// sinon, c'est ok, on reset le nombre de tentative.
			failedAttemptToReachPointInPathCount = alarm[1] == -1 ? failedAttemptToReachPointInPathCount + 1 : 0;	
			alarm[1] = maxTimeToReachNextPosition * room_speed; // alarme gérant un blocage pour aller au point du path.
		}
	}

	mp_potential_step(nextPositionX, nextPositionY, patrolSpeed * 2, false);
	
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

/*var fearObject = argument[0];

if(!path_exists(path)) {
	path = path_add();
	
	var distanceToFearObject = distance_to_point(fearObjectX,fearObjectY)
	var escapeDistance = random_range(1,2)*distanceToFearObject;
	var angleOfFearObject = point_direction(fearObjectX,fearObjectY,self.x,self.y)
	var escapeAngle = random_range(-20,20)+angleOfFearObject;
	var escapePointX = x+lengthdir_x(escapeDistance,escapeAngle);
	var escapePointY = y+lengthdir_y(escapeDistance,escapeAngle);
	if(instance_exists(escapeInstance)) then instance_destroy(escapeInstance);
	escapeInstance = instance_create_layer(escapePointX,escapePointY,layer,obj_escapePoint)
	
	scr_calculNewGridIfTargetIsOutside(escapeInstance);
	if(instance_exists(escapeInstance)){
		if(mp_grid_path(obj_grid.grid, path, x, y, escapeInstance.x, escapeInstance.y, true)) {
		    state = "running";
		}else{
			state = "standing"
		}
		instance_destroy(escapeInstance);
	}
}else{
	state = "running";
}*/
