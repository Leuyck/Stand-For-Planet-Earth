var fearObject = argument[0];

if(!path_exists(path)) {
	path = path_add();
	
	var distanceToFearObject = distance_to_point(fearObjectX,fearObjectY)
	var escapeDistance = random_range(1,2)*distanceToFearObject;
	var angleOfFearObject = point_direction(fearObjectX,fearObjectY,self.x,self.y)
	var escapeAngle = random_range(-20,20)+angleOfFearObject;
	var escapePointX = x+lengthdir_x(escapeDistance,escapeAngle);
	var escapePointY = y+lengthdir_y(escapeDistance,escapeAngle);
	if(instance_exists(escapeInstance)) then instance_destroy(escapeInstance);
	escapeInstance = instance_create_layer(escapePointX,escapePointY,layer,obj_escapePoint)
	
	scr_calculNewGridIfTargetIsOutside(escapeInstance);
	if(instance_exists(escapeInstance)){
		if(mp_grid_path(grid, path, x, y, escapeInstance.x, escapeInstance.y, true)) {
		    state = "running";
		}else{
			state = "standing"
		}
		instance_destroy(escapeInstance);
	}
}else{
	state = "running";
}
