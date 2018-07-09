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
	switch(patrolType) {
		case "insideRoom":
			if (patrolRectangle == noone) {
				patrolRectangle = scr_calculPatrolRectangle(x,y,x,y);
			}
						
			var minx = ds_list_find_value(patrolRectangle, 0);
			var miny = ds_list_find_value(patrolRectangle, 1);
			var maxx = ds_list_find_value(patrolRectangle, 2);
			var maxy = ds_list_find_value(patrolRectangle, 3);
			var patrolx = random_range(minx, maxx); 
			var	patroly = random_range(miny, maxy);
			
			path = path_add();
			
			if (mp_grid_path(obj_grid.grid, path, x, y, patrolx, patroly, true)) {
				path_set_kind(path, 1);
			    path_set_precision(path, 8);
				positionInPath = 1;
		        nextPositionX = path_get_point_x(path, positionInPath);
		        nextPositionY = path_get_point_y(path, positionInPath);
				state = "walking";
			}
			else {
				path_delete(path);
			    state = "standing";
			}
			break;
			
		case "none":
		default :
			state = "standing";
			src_wait();
			break;
	}
}
else if(path_exists(path)) {
	if(point_distance(x, y, nextPositionX, nextPositionY) < sprite_width / 3) {
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