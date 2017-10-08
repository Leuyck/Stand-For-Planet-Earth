var hero = argument[0];
var grid = gridObject.grid;

if(alarm[5] == -1){
	scr_calculNewGridIfTargetIsOutside(hero,self.id);
	
	if(mp_grid_path(grid, path, x, y, hero.x, hero.y, true)) {
	    path_start(path, spdChase, path_action_stop, false);
	    state = "chasing";
	    ennemySpotted = true;
		alarm[5] = room_speed;
	    return true;
	}
	else {
		alarm[5] =-1;
	    ennemySpotted = false;
	    return false;
	}
}else{
	///IF SOMEONE STAYS ON THE PATH OF THE NPC
	var charX = (x-gridObject.x) div 64;
	var charY = (y-gridObject.y) div 64;
	if(mp_grid_get_cell(grid,charX+lengthdir_x(1,image_angle),charY+lengthdir_y(1,image_angle))==-1){
		alarm[5]=-1;
		path_end();
	}
	if(distance_to_object(obj_localNpc)<10){
		alarm[5]=-1;
		path_end();
	}
		return true;
}
