///@description scr_setBehaviourActionsCivil

behaviour = scr_getNpcBehaviourCivil();

switch(behaviour) {
    case "fear":
        scr_fearHero();
        break;
		
	case "pls":
		state = "hide";
		image_index = 0;
		break;
}