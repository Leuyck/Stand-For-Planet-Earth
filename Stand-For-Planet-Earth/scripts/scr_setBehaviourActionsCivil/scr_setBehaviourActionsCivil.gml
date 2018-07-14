///@description scr_setBehaviourActionsCivil

behaviour = scr_getNpcBehaviourCivil();

switch(behaviour) {
    case "run away":
        scr_runAwayFromHero();
        break;
		
	case "pls":
		scr_pls();
		break;
}