///scr_setBossBehaviourActions

var ennemy = scr_getTargetEnnemy(id, obj_localPlayer);///provoque freeze

if(currentHealth<=maxHealth/2) then phase = 2;
if(phase ==1){
	if(ennemy != noone) {
		behaviour = scr_getBossBehaviour1(id, ennemy);
	}
	else {
		behaviour = noone;	
	}
	scr_setBossAction1(behaviour,ennemy);
}else{
	if(ennemy != noone) {
		behaviour = scr_getBossBehaviour2(id, ennemy);
	}
	else {
		behaviour = noone;	
	}
	scr_setBossAction2(behaviour,ennemy);
	if(state == "fire1" || state == "fire2") then chargeBeforeBreathing++;
}
if(state == "fire2" || ds_map_find_value(sprites,state) == spr_sallyBot_2_attack || ds_map_find_value(sprites,state) == spr_sallyBot_2_marche || ds_map_find_value(sprites,state) == spr_sallyBot_2_standing){
	invulnerable = true	
}else{
	invulnerable = false;
}