///@description scr_setBehaviourActionsCivil

fearObject = scr_getCivilianFearObject(id);
behaviour = scr_getNpcBehaviourCivil(id,fearObject);
show_debug_message(string(fear)+" "+behaviour)
switch(behaviour)
{
    case "walking":
		
        src_patrol();
        break;
        
    case "running":
        var isRunning = scr_fearHero(fearObject);
        /*if(isRunning == false) {
            src_patrol();
        }*/
        break;

    case "waiting":
		state ="standing"
        path_end();
        break;
}