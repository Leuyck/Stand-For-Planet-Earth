///@description scr_buildNpcPath(obj_localNpc);

switch(patrolType) {
	case "random":
		var patrolAngle = random_range(0, 360);
		var maxPatrolPoint = scr_getFarestPointInRoom(x, y, patrolAngle, patrolRange);
		var maxPatrolPointX = string_extract_X(maxPatrolPoint);
		var maxPatrolPointY = string_extract_Y(maxPatrolPoint);
		
		// 1er position aléatoire
		var patrolx1 = random_range(x, maxPatrolPointX); 
		var	patroly1 = random_range(y, maxPatrolPointY);
		var distance1 = distance_to_point(patrolx1, patroly1);
		
		// 2ème position aléatoire
		var patrolx2 = random_range(x, maxPatrolPointX); 
		var	patroly2 = random_range(y, maxPatrolPointY);
		var distance2 = distance_to_point(patrolx2, patroly2);
		
		// On prend la distance de chemin le plus grand, entre les deux calculés.
		// L'avantage est que le NPC va avoir tendance à s'éloigner des murs
		// de la pièce, au lieu d'y rester "coller" avec 1 seul jeu de position aléatoire.
		var patrolx = distance1 > distance2 ? patrolx1 : patrolx2;
		var patroly = distance1 > distance2 ? patroly1 : patroly2;
			
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
				var pointX = string_extract_X(point);
				var pointY = string_extract_Y(point);
				if(pointX != 0 && pointY != 0) {
					path_add_point(newPath, pointX, pointY, patrolSpeed);
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