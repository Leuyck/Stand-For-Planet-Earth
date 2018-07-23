var hero = argument[0];

// Time to rebuild a path to the ennemy
if(alarm[5] == -1) {
	if(path_exists(path)) {
		path_delete(path);
	}
	
	var newPath = path_add();
	if(mp_grid_path(obj_grid.grid, newPath, x, y, hero.x, hero.y, true)) {
		scr_initNpcPath(newPath);
		state = "chasing";
		alarm[5] = room_speed / 2;
	}
	else {
		state = "standing";
		alarm[5] = -1;
	}
}

if(path_exists(path)) {
	scr_moveToNextPointInPath(spdChase, false);
	image_angle = point_direction(x, y, hero.x, hero.y);
}

