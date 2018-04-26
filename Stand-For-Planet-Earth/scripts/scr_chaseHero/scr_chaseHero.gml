var hero = argument[0];
var grid = gridObject.grid;

if(alarm[5] == -1){
	scr_calculNewGridIfTargetIsOutside(hero,self.id);
	if(path_exists(path)){
		path_delete(path);
	}
	path = path_add();
	
	if(mp_grid_path(grid, path, x, y, hero.x, hero.y, true)) {
	    state = "chasing";
	    ennemySpotted = true;
		alarm[5] = room_speed;
		return true;
	}else {
		state = "standing";
		alarm[5] =-1;
	    ennemySpotted = false;
	    return false;
	}
}else{
	///IF A NPC STAYS ON THE PATH OF THE NPC
	//var charX = (x-gridObject.x) div 64;
	//var charY = (y-gridObject.y) div 64;
	//if(mp_grid_get_cell(grid,charX+lengthdir_x(1,image_angle),charY+lengthdir_y(1,image_angle))==-1){
	//	alarm[5]=-1;
	//	path_end();
	//	if(path_exists(path)){
	//		path_delete(path);
	//	}
	//}
	//if(distance_to_object(obj_localNpc)<10){
	//	if(other.id < self.id){
	//		alarm[5]=-1;
	//		path_end();
	//		if(path_exists(path)){
	//		path_delete(path);
	//		}
	//	}
	//}
	
	//return true;
}

