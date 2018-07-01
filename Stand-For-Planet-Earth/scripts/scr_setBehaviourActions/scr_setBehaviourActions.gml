///scr_setBehaviourActions();

behaviour = scr_getNpcBehaviour(id, obj_localPlayer);

switch(behaviour)
{
    case "patrol":
        src_patrol();
        break;
        
    case "chase":
        var isChasing = scr_chaseHero(targetHero);
        if(isChasing == false) {
            behaviour = "patrol";
        }
        break;
        
    case "attack":
        scr_attackHero(targetHero);
        break;
            
    case "waiting":
		state = "standing";
        break;
}
	
/*if(path_exists(path)){
	var distanceToPatrolEnd = point_distance(x,y,path_get_x(path,1),path_get_y(path,1));
	var percentageOfPath = (path_get_length(path)-distanceToPatrolEnd)/path_get_length(path);
	var pathPositionToGo = percentageOfPath + 0.1;
	pathPositionToGo = clamp(pathPositionToGo,0,1);
	//mp_potential_settings(30,1,500,true);
		
	if(mp_potential_step_object(path_get_x(path,pathPositionToGo),path_get_y(path,pathPositionToGo),pathSpeed,all)){
		path_delete(path);
	}
}*/