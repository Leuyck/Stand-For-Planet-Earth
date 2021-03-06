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
	    state = "walking";
	    return true;
	}else {
		path_delete(path);
	    state = "standing";
	    return false;
	}
}