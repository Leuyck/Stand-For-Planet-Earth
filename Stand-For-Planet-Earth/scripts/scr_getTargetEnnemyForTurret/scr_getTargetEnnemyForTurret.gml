///scr_getTargetEnnemyForTurret();

var targetEnnemy = noone;
if(ennemySpotted) {
	with(obj_localNpc){
		if(self.state !="dead"){
			targetEnnemy = instance_nearest(other.x, other.y, obj_localNpc);
		}else{
			targetEnnemy = noone;
			other.ennemySpotted = false;
		}
	}
}
else {
	targetEnnemy = src_getTheNearestVisibleEnnemyForTurret();
}
return targetEnnemy;