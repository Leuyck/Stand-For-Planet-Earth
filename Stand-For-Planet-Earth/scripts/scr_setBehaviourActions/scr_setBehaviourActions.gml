///scr_setBehaviourActions();

behaviour = scr_getNpcBehaviour(id, obj_localPlayer);

switch(behaviour)
{
    case "patrol":
        src_patrol();
        break;
        
    case "chase":
        scr_chaseHero()
        break;
        
    case "attack":
        scr_attackHero();
        break;
            
    case "waiting":
		state = "standing";
        break;
}

if(path_exists(path)) {
	if(point_distance(x, y, nextPositionX, nextPositionY) < 2 * spd) {
        positionInPath++;
        if( positionInPath <= path_get_number(path) ) {
            nextPositionX = path_get_point_x(path, positionInPath);
            nextPositionY = path_get_point_y(path, positionInPath); 
        }
    }

    mp_potential_step(nextPositionX, nextPositionY, spd, false);
	
	if( positionInPath + 1 <= path_get_number(path) ) {
        var posX = path_get_point_x(path, positionInPath + 1);
        var posY = path_get_point_y(path, positionInPath + 1); 
        image_angle = point_direction(x, y, posX, posY);
    }
    else {
        image_angle = direction;
    }
}