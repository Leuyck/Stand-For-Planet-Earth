///@description scr_setBehaviourActionsCivil

scr_getCivilianFearObject(id);
scr_getNpcBehaviourCivil(id,fearObject);
show_debug_message(string(fear)+" "+behaviour)
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
		break;

    case "waiting":
		state ="standing"
        path_end();
        break;
}