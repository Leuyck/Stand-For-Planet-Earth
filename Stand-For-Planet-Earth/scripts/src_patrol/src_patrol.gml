///@description scr_patrol();


// Pausing the patrol
if(alarm[0] > 0) {
	state = "standing";
	image_index=0;
	return true;
}

// The patrol just finished
else if (!path_exists(path) && alarm[0] == -1) {
	alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5, 2));
	state = "standing";
	return true;
}

// The pause is ended.
else if(!path_exists(path)) {
	path = path_add();
	var minx =ds_list_find_value(patrolRectangle,0);
	var miny =ds_list_find_value(patrolRectangle,1);
	var maxx =ds_list_find_value(patrolRectangle,2);
	var maxy =ds_list_find_value(patrolRectangle,3);
		
	var patrolx = random_range(minx, maxx); 
	var	patroly = random_range(miny, maxy);
    
	if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) {
		pathPositionToGo = 0.1;
	    state = "walking";
	    return true;
	}else {
		path_delete(path);
	    state = "standing";
	    return false;
	}
}

// Npc is patroling
else {
	mp_potential_settings(30,1,500,true);
	var distanceToPatrolEnd = point_distance(x,y,path_get_x(path,1),path_get_y(path,1));
	var percentageOfPath = (path_get_length(path)-distanceToPatrolEnd)/path_get_length(path);
	var pathPositionToGo = percentageOfPath + 0.3;
	pathPositionToGo = clamp(pathPositionToGo,0,1);
		
	if(mp_potential_step_object(path_get_x(path,pathPositionToGo),path_get_y(path,pathPositionToGo),spd,obj_localNpc)){
		path_delete(path);
	}
	state = "walking";
}