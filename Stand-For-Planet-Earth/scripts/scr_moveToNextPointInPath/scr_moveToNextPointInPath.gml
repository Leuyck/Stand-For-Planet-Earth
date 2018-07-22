var speedPath = argument[0];
var lookToNextPosition = argument[1];

var npcFailedToReachNextPoint = alarm[1] == -1;
var npcReachedNextPoint = point_distance(x, y, nextPositionX, nextPositionY) <= distanceWherePointConsideredReached;

if(npcFailedToReachNextPoint || npcReachedNextPoint) {
	positionInPath++;
	nextPositionX = path_get_point_x(path, positionInPath);
	nextPositionY = path_get_point_y(path, positionInPath);
		
	var isNextPositionInvalid = positionInPath > path_get_number(path) || (nextPositionX == 0 && nextPositionY == 0); // S'il n'y a plus de points valides dans le path
	var hasReachMaximumAttemptCount = npcFailedToReachNextPoint && failedAttemptToReachPointInPathCount == maxFailedAttemptToReachPointInPath; // On a échoué N fois dans la tentative d'atteindre le prochain point
	
	if(isNextPositionInvalid || hasReachMaximumAttemptCount) {
		path_delete(path);
		failedAttemptToReachPointInPathCount = 0;
		src_wait();
		return; // Le return est important : on ne veut pas passer dans le mp_potential_step.
	}
	else {
		// Si on n'a pas réussi à atteindre le point suivant, on incrémente le nombre de tentative
		// sinon, c'est ok, on reset le nombre de tentative.
		failedAttemptToReachPointInPathCount = alarm[1] == -1 ? failedAttemptToReachPointInPathCount + 1 : 0;	
		alarm[1] = maxTimeToReachNextPosition * room_speed; // alarme gérant un blocage pour aller au point du path.
	}
}

mp_potential_step(nextPositionX, nextPositionY, speedPath, false);

if(lookToNextPosition == false) {
	image_angle = direction;
}
else {
	// Calcul de là ou on regarde
	var nextNextPositionX = path_get_point_x(path, positionInPath + 1);
	var nextNextPositionY = path_get_point_y(path, positionInPath + 1); 
	if (nextNextPositionX != 0 && nextNextPositionY != 0) {
		image_angle = point_direction(x, y, nextNextPositionX, nextNextPositionY); // On regarde vers le point n + 1
	}
	else {
		image_angle = direction;
	}
}