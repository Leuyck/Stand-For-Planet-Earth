var hero = scr_getTargetEnnemy(self, obj_localPlayer);
if(hero == noone) {
	return false;
}

// Time to rebuild a path to the ennemy
if(alarm[5] == -1) {
	if(path_exists(path)) {
		path_delete(path);
	}
	
	var newPath = path_add();
	if(mp_grid_path(obj_grid.grid, newPath, x, y, hero.x, hero.y, true)) {
		scr_initNpcPath(newPath);
		state = "chasing";
	    ennemySpotted = true;
		alarm[5] = room_speed;
	}
	else {
		state = "standing";
		alarm[5] = -1;
	    ennemySpotted = false;
	}
}

if(path_exists(path)) {
	scr_moveToNextPointInPath(spdChase);
}

