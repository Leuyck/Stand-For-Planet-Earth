///scr_getFearObject()

var heardEnnemy = scr_getTheNearestHeardEnnemy(self, obj_localPlayer);
if(heardEnnemy != noone) {
	return heardEnnemy;	
}

var nearestHeardSoldierAttacking = scr_getTheNearestHeardSoldierAttacking(self);
if(nearestHeardSoldierAttacking != noone) {
	return nearestHeardSoldierAttacking;	
}

var fearingCivil = scr_getTheNearestVisibleCivilFearing(self);
if(fearingCivil != noone) {
	return fearingCivil;	
}

return noone;