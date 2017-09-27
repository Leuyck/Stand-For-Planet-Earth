///@description scr_setBehaviourActionsCivil

scr_getCivilianFearObject(id);
scr_getNpcBehaviourCivil(id,fearObject);
switch(behaviour)
{
    case "walking":
        src_patrol();
        break;
        
    case "running":
        var isRunning = scr_fearHero(fearObject);
        break;
		
	case "hide":
		state = "hide";
		image_index=0;
		break;

    case "waiting":
	    path_end();
		state ="standing"
		image_index=0;
        break;
}