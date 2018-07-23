var IA = argument[0];
var enemyKind = argument[1]
var enemy = noone;

if(IA.ennemySpotted) {
	enemy = instance_nearest(IA.x, IA.y, enemyKind);
}

if(enemy == noone) {
	enemy = scr_getTheNearestVisibleEnnemy(IA, enemyKind);
}

if(enemy == noone) {
	enemy = src_getTheNearestHeardEnnemy(IA, enemyKind);	
}

IA.ennemySpotted = enemy != noone;

return enemy;