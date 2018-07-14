///@description scr_setBehaviourActionsCivil

behaviour = scr_getNpcBehaviourCivil();

switch(behaviour) {
    case "running":
        scr_fearHero();
        break;
		
	case "hide":
		state = "hide";
		image_index = 0;
		break;

    case "waiting":
	    src_wait();
        break;
}