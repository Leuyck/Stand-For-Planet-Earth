var IA = argument[0];
var ennemy = argument[1]
var targetEnnemy = noone;
if(ennemySpotted) {
	with(ennemy){
		if(self.state !="dead"){
			targetEnnemy = instance_nearest(IA.x, IA.y, ennemy);
		}else{
			targetEnnemy = noone;
			other.ennemySpotted = false;
		}
	}
}
else {
    targetEnnemy = src_getTheNearestVisibleEnnemyFromIA(id,ennemy);
}
return targetEnnemy;

