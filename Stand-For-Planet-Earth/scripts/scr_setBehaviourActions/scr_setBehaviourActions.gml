///scr_setBehaviourActions();

behaviour = scr_getNpcBehaviour(id, obj_localPlayer);

switch(behaviour) {
    case "chase":
        scr_chaseHero()
        break;
        
    case "attack":
        scr_attackHero();
        break;
            
    case "waiting":
		src_wait();
        break;
}