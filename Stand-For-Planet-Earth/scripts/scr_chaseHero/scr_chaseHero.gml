var hero = scr_getTargetEnnemy(self, obj_localPlayer);
if(hero == noone) {
	return false;
}

if(alarm[5] == -1) {
	//scr_calculNewGridIfTargetIsOutside(hero, self.id);
	if(path_exists(path)) {
		path_delete(path);
	}
	path = path_add();
	
	if(mp_grid_path(obj_grid.grid, path, x, y, hero.x, hero.y, true)) {
	    state = "chasing";
	    ennemySpotted = true;
		alarm[5] = room_speed;
		positionInPath = 1;
        nextPositionX = path_get_point_x(path, positionInPath);
        nextPositionY = path_get_point_y(path, positionInPath);
		return true;
	}
	else {
		state = "standing";
		alarm[5] =-1;
	    ennemySpotted = false;
	    return false;
	}
}

