/// @description passive move
var grid = gridObject.grid;

if(chasing){
	patrolx = random_range(-patrolRange/2, patrolRange/2) + patrolXOrigin; 
	patroly = random_range(-patrolRange/2, patrolRange/2) + patrolYOrigin;
}else{
	patrolx = random_range(-patrolRange, patrolRange) + patrolXOrigin; 
	patroly = random_range(-patrolRange, patrolRange) + patrolYOrigin;
}
			
///If petBot is not on petdrone's grid
if(collision_rectangle(ds_list_find_value(patrolRectangle, 0),ds_list_find_value(patrolRectangle,1),ds_list_find_value(patrolRectangle, 2),ds_list_find_value(patrolRectangle, 3),parent,false,true) == noone){
	patrolRectangle = scr_calculPatrolRectangle(x,y,parent.x,parent.y);
	with(gridObject){
		scr_initialize_grid(owner.patrolRectangle);
	}
}

if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
{
		path_start(path, spd, path_action_stop, true);
		path_set_kind(path,1)
		path_set_precision(path,4)
}else{
	alarm[0] = 1;
}

if(chasing) then alarm[0] = 0.3*room_speed;