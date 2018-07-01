var IA = argument[0];
var enemyKind = argument[1]
var enemy = noone;

if(IA.ennemySpotted) {
	enemy = instance_nearest(IA.x, IA.y, enemyKind);
	if(enemy == noone) {
		IA.ennemySpotted = false;	
	}
}

if(enemy == noone) {
	enemy = src_getTheNearestVisibleEnnemyFromIA(IA, enemyKind);
	if(enemy != noone) {
		IA.ennemySpotted = true;
	}
}

return enemy;