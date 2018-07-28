///scr_setBehaviourActions();

var ennemy = scr_getTargetEnnemy(id, obj_localPlayer);
if(ennemy != noone) {
	behaviour = scr_getSoldierNPCBehaviour(id, ennemy);
}
else {
	behaviour = noone;	
}

switch(behaviour) {
    case "chase":
        scr_chaseHero(ennemy)
        break;
        
    case "attack":
		scr_attackHero(ennemy);
        break;
		
	case "surprised":
		scr_surprised(ennemy);
		break;
}