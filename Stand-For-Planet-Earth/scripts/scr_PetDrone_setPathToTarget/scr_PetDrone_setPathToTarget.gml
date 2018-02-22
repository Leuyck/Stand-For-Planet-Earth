///@description scr_PetDrone_setPathToTarget()

patrolx = target.x
patroly = target.y
			
scr_calculNewGridIfTargetIsOutside(target);

if (mp_grid_path(grid, path, x, y, patrolx, patroly, true)) {
	path_start(path, spd, path_action_stop, true);
	path_set_kind(path,1)
	path_set_precision(path,4)
}