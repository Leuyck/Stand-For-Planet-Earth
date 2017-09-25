var hero = argument[0];
var grid = gridObject.grid;

if(alarm[5] == -1){
	if(mp_grid_path(grid, path, x, y, hero.x, hero.y, true)) {
	    path_start(path, spdChase, path_action_stop, false);
	    state = "chasing";
	    ennemySpotted = true;
		alarm[5] = room_speed;
	    return true;
	}
	else {
		alarm[5] =-1;
	    ennemySpotted = false;
	    return false;
	}
}else{
	return true;
}
