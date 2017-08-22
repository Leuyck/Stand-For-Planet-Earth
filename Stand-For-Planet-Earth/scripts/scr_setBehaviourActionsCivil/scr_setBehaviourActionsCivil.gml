///@description scr_setBehaviourActionsCivil

var fearObject = scr_getCivilianFearObject(IA);
var behaviour = scr_getNpcBehaviourCivil(id,fearObject);
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