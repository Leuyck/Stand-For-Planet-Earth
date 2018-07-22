///scr_setBehaviourActions();

behaviour = scr_getSoldierNPCBehaviour(id, obj_localPlayer);

switch(behaviour) {
    case "chase":
        scr_chaseHero()
        break;
        
    case "attack":
		scr_attackHero();
        break;
}