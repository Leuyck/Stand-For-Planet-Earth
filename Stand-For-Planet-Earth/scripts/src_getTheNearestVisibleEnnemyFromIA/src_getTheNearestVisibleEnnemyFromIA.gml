///src_getTheNearestVisibleEnnemyFromIA(idOfIA,obj_ennemy)

var IA = argument[0];
var enemyKind = argument[1];
var nearestEnnemy = noone;
var bestDistance = noone;

with(enemyKind) {	
	var eyeContact = scr_isCollidingWithRoom(IA.x, IA.y, self.x, self.y) == false;
	if (eyeContact) {
	    var distance = point_distance(IA.x, IA.y, self.x, self.y);
		if(distance <= IA.viewRange) {
		    if(bestDistance == noone || distance < bestDistance) {
		        bestDistance = distance;
		        nearestEnnemy = self.id;
		    }
		}
	}
}

return nearestEnnemy;
