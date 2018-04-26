var fearObject = argument[0];

if(!path_exists(path)) {
	path = path_add();
	
	var distanceToFearObject = distance_to_object(fearObject)
	var escapeDistance = random_range(1,2)*distanceToFearObject;
	var angleOfFearObject = angle_difference(self.id, fearObject)
	var escapeAngle = random_range(-45,45)+(angleOfFearObject+180);
	var escapePointX = x+lengthdir_x(escapeDistance,escapeAngle);
	var escapePointY = y+lengthdir_y(escapeDistance,escapeAngle);
	var escape = instance_create_layer(escapePointX,escapePointY,layer,obj_escapePoint)
	
	scr_calculNewGridIfTargetIsOutside(escape);
	
	if(mp_grid_path(grid, path, x, y, escape.x, escape.y, true)) {
	    path_start(path, spdChase, path_action_stop, false);
	    state = "running";
		
	}
	else {
		state = "standing"
	}
		instance_destroy(escape);
}else{
	state = "running";
}
