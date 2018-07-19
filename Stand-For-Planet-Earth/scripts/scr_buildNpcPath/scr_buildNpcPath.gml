///@description scr_buildNpcPath(obj_localNpc);

switch(patrolType) {
	case "random":
	
		// 1ère position aléatoire dans la pièce
		var patrolPoint1 = scr_getRandomPointInRoom(x, y, patrolRange);
		var distanceToPatrolPoint1 = distance_to_point(patrolPoint1[0], patrolPoint1[1]);
		
		// 2ème position aléatoire dans la pièce
		var patrolPoint2 = scr_getRandomPointInRoom(x, y, patrolRange);
		var distanceToPatrolPoint2 = distance_to_point(patrolPoint2[0], patrolPoint2[1]);
		
		// On prend la distance de chemin le plus grand, entre les deux positions calculées.
		// L'avantage est que le NPC va avoir tendance à s'éloigner des murs
		// de la pièce, au lieu d'y rester "coller" avec 1 seul jeu de position aléatoire.
		var patrolx = distanceToPatrolPoint1 > distanceToPatrolPoint2 ? patrolPoint1[0] : patrolPoint2[0];
		var patroly = distanceToPatrolPoint1 > distanceToPatrolPoint2 ? patrolPoint1[1] : patrolPoint2[1];
			
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
			if(point_distance(x, y, patrolXOrigin, patrolYOrigin) > distanceWherePointConsideredReached) {
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