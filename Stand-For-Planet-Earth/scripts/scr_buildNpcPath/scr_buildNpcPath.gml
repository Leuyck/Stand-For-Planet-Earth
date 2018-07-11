///@description scr_buildNpcPath(obj_localNpc);

switch(patrolType) {
	case "randomInsideRectangle":
		if (patrolRectangle == noone) {
			patrolRectangle = scr_calculPatrolRectangle(x, y);
		}
						
		var minx = ds_list_find_value(patrolRectangle, 0);
		var miny = ds_list_find_value(patrolRectangle, 1);
		var maxx = ds_list_find_value(patrolRectangle, 2);
		var maxy = ds_list_find_value(patrolRectangle, 3);
		var patrolx = random_range(minx, maxx); 
		var	patroly = random_range(miny, maxy);
			
		var newPath = path_add();
			
		if (mp_grid_path(obj_grid.grid, newPath, x, y, patrolx, patroly, true)) {
			path_set_kind(newPath, 1);
			path_set_precision(newPath, 8);
			return newPath;
		}
		else {
			path_delete(newPath);
			return noone;
		}
			
	case "points":
		if(patrolPoints != noone) {
			var newPath = path_add();
			path_add_point(newPath, patrolXOrigin, patrolYOrigin, patrolSpeed);
			for(var i = 0 ; i <= ds_list_size(patrolPoints) - 1 ; i++) {
				var point = ds_list_find_value(patrolPoints, i);
				var delimiterPosition = string_pos(";", point);
				if(delimiterPosition > 0) {
					var pointX = string_copy(point, 0, delimiterPosition - 1);
					var pointY = string_copy(point, delimiterPosition + 1, string_length(point) - delimiterPosition);
					path_add_point(newPath, real(string_digits(pointX)), real(string_digits(pointY)), patrolSpeed);
				}
			}
			if(point_distance(x, y, patrolXOrigin, patrolYOrigin) > sprite_width / 4) {
				path_reverse(newPath);
			}
			path_set_closed(newPath, false);
			return newPath;
		}
		else {
			return noone;	
		}

	case "none":
	default :
		return noone;
		break;
}