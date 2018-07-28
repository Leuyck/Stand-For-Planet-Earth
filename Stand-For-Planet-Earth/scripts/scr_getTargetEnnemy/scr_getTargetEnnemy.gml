var IA = argument[0];
var ennemyKind = argument[1]
var ennemy = noone;

if(IA.ennemySpotted) {
	ennemy = instance_nearest(IA.x, IA.y, ennemyKind);
}

if(ennemy == noone) {
	ennemy = scr_getTheNearestVisibleEnnemy(IA, ennemyKind);
}

if(ennemy == noone) {
	ennemy = scr_getTheNearestHeardEnnemy(IA, ennemyKind);	
}

if(ennemy == noone) {
	ennemy = scr_getTheNearestHeardSoldierTarget(IA, ennemyKind);	
}

IA.ennemySpotted = ennemy != noone;

return ennemy;