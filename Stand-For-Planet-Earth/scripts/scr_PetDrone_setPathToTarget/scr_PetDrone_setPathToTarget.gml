///@description scr_PetDrone_setPathToTarget()

patrolx = target.x
patroly = target.y
			
if(collision_rectangle(ds_list_find_value(patrolRectangle, 0),ds_list_find_value(patrolRectangle,1),ds_list_find_value(patrolRectangle, 2),ds_list_find_value(patrolRectangle, 3),target,false,true) == noone){
	patrolRectangle = scr_calculPatrolRectangle(x,y,target.x,target.y);
	with(gridObject){
		scr_initialize_grid(owner.patrolRectangle);
	}
}

if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) 
{
	path_start(path, spd, path_action_stop, true);
	path_set_kind(path,1)
	path_set_precision(path,4)
}