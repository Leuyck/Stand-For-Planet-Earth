///src_getTheNearestVisibleEnnemyForTurret()
var nearestEnnemy = noone;
var bestDistance = noone;

with(obj_localNpc){	
	if(self.state!="dead" && abs(angle_difference(point_direction(other.x,other.y,self.x,self.y),other.baseAnglePosition))<other.fieldOfView/2){
		if (collision_line(other.x, other.y, self.x, self.y, obj_mur_parent, false, true) == noone){
			var distance = point_distance(other.x, other.y, self.x, self.y);
			if(bestDistance == noone || distance < bestDistance){
			    bestDistance = distance;
			    nearestEnnemy = self.id;
			}
		}else if (collision_line(other.x, other.y, self.x, self.y, obj_door_parent, false, true) == noone) {
			var distance = point_distance(other.x, other.y, self.x, self.y);
			if(bestDistance == noone || distance < bestDistance){
			    bestDistance = distance;
			    nearestEnnemy = self.id;
			}
		}
	}
}
return nearestEnnemy;

//with(obj_localNpc) {	
//	if(self.state!="dead" && abs(angle_difference(point_direction(other.x,other.y,self.x,self.y),other.baseAnglePosition))<other.fieldOfView/2){
//		var eyeContact = scr_isCollidingWithRoom(IA.x, IA.y, self.x, self.y) == false;
//		if (eyeContact) {
//		    var distance = point_distance(other.x, other.y, self.x, self.y);
//			if(bestDistance == noone || distance < bestDistance){
//			    bestDistance = distance;
//			    nearestEnnemy = self.id;
//			}
//		}
//	}
//}
//return nearestEnnemy;