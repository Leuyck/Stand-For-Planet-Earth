var IA = argument[0];
var ennemyKind = argument[1]
var ennemy = noone;

if(IA.ennemySpotted) {
	viewRange = 1600;
	ennemy =  scr_getTheNearestVisibleEnnemy(IA, ennemyKind);
	if(ennemy == noone){
		IA.ennemySpotted =false
		return ennemy;
	}
}

if(ennemy == noone) {
	ennemy = scr_getTheNearestVisibleEnnemy(IA, ennemyKind);
}

if(ennemy == noone) {
	ennemy = scr_getTheNearestHeardEnnemy(IA, ennemyKind);	
}

//if(ennemy == noone) {//provoque une boucle infinie
//	var friendSoldier = scr_getTheNearestHeardSoldierAttacking(IA);
//	if(friendSoldier != noone) {
//		ennemy = scr_getTargetEnnemy(friendSoldier, ennemyKind);
//	}
//}

IA.ennemySpotted = ennemy != noone;
if(IA.ennemySpotted == false) then viewRange = 800;
return ennemy;