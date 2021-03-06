///@description scr_setBehaviourActionsCivil
var pathSpeed=0;

fearObject = scr_getCivilianFearObject();
behaviour = scr_getNpcBehaviourCivil();

switch(behaviour){
    case "walking":
        src_patrol();
		pathSpeed = spd;
        break;
        
    case "running":
        var isRunning = scr_fearHero(fearObject);
		pathSpeed = spd*2;
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

if(path_exists(path)){
	var distanceToPatrolEnd = point_distance(x,y,path_get_x(path,1),path_get_y(path,1));
	var percentageOfPath = (path_get_length(path)-distanceToPatrolEnd)/path_get_length(path);
	var pathPositionToGo = percentageOfPath + 0.1;
	pathPositionToGo = clamp(pathPositionToGo,0,1);
		
	if(mp_potential_step_object(path_get_x(path,pathPositionToGo),path_get_y(path,pathPositionToGo),pathSpeed,all)){
		path_delete(path);
	}
}