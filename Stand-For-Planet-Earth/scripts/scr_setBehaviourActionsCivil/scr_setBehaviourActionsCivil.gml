///@description scr_setBehaviourActionsCivil
var pathSpeed=0;

fearObject = scr_getCivilianFearObject();
behaviour = scr_getNpcBehaviourCivil();

switch(behaviour) {
    case "running":
        var isRunning = scr_fearHero(fearObject);
		pathSpeed = spd*2;
        break;
		
	case "hide":
		state = "hide";
		image_index = 0;
		break;

    case "waiting":
	    src_wait();
        break;
}