
var grid = gridObject.grid;

if(script == false){
	// Pausing the patrol
	if(alarm[0] > 0) {
	    state = "standing";
		image_index=0;
	    return true;
	}

	// The patrol just finished
	else if (path_index == -1 && alarm[0] == -1) {
	    alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5, 2));
	    state = "standing";
	    return true;
	}

	// The pause is ended.
	else if(path_index == -1) {
		var minx =ds_list_find_value(patrolRectangle,0);
		var miny =ds_list_find_value(patrolRectangle,1);
		var maxx =ds_list_find_value(patrolRectangle,2);
		var maxy =ds_list_find_value(patrolRectangle,3);
		
	    var patrolx = random_range(minx, maxx); 
	    var patroly = random_range(miny, maxy);
    
	    if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) {
	        path_start(path, spd, path_action_stop, false);
	        state = "walking";
	        return true;
	    }
	    else {
	        state = "standing";
	        return false;
	    }
	}

	// Npc is patroling
	else {
	    state = "walking";
	    return true;
	}
	
//IF IN A SCRIPT 

}else{ 
	// Pausing the patrol
	if(alarm[0] > 0) {
	    state = "standing";
		script = false;
		image_index=0;
	    return true;
	}

	// The patrol just finished
	else if (path_index == -1 && alarm[0] == -1) {
	    alarm[0] = room_speed * (patrolPauseTime + choose (0, 0.5, 1, 1.5, 2));
	    state = "standing";
	    return true;
	}
	if(path_index == -1) {
	    var patrolx = scriptPatrolX; 
	    var patroly = scriptPatrolY;
    
	    if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) {
	        path_start(path, spd, path_action_stop, false);
	        state = "walking";
	        return true;
	    }
	    else {
	        state = "standing";
	        return false;
	    }
	}
	// Npc is patroling
	else {
	    state = "walking";
	    return true;
	}
}