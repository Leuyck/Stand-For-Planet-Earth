///scr_setBehaviourActions();


var targetHero = scr_getTargetEnnemy(id,obj_localPlayer);
behaviour = scr_getNpcBehaviour(id, targetHero);
    switch(behaviour)
    {
        case "patrol":
            src_patrol();
            break;
        
        case "chase":
            var isChasing = scr_chaseHero(targetHero);
            if(isChasing == false) {
                behaviour = "patrol";
            }
            break;
        
        case "attack":
            scr_attackHero(targetHero);
            break;
            
        case "waiting":
			state = "standing";
            path_end();
            break;
    }