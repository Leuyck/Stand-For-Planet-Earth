///@description scr_setBehaviourActionsCivil

var fearObject = scr_getCivilianFearObject(id);
var behaviour = scr_getNpcBehaviourCivil(id,fearObject);
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
        path_end();
        break;
}