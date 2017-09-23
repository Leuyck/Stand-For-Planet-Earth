var fearObject = argument[0];
with(obj_grid){
	if(self.owner = other.id){
		var grid = self.grid;
	}
}

var distanceToFearObject = distance_to_object(fearObject)
var escapeDistance = random_range(1,2)*distanceToFearObject;
var angleOfFearObject = angle_difference(self.id, fearObject)
var escapeAngle = random_range(-45,45)+(angleOfFearObject+180);
var escapePointX = x+lengthdir_x(escapeDistance,escapeAngle);
var escapePointY = y+lengthdir_y(escapeDistance,escapeAngle);

if(path_index == -1){
	if(mp_grid_path(grid, path, x, y, escapePointX, escapePointY, true)) {
	    path_start(path, spdChase, path_action_stop, false);
	    state = "running";
	}
	else {
	state = "standing"
	}
}else{
	state = "running";
}
