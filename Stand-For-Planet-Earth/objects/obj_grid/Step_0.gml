/// @description 
//INITIALIZE GRID
if(init ==false){
	scr_initialize_grid(owner.patrolRectangle);
	init = true;
}

if(object_get_parent(owner.object_index) == obj_localNpc){
	scr_clearGridCellAndArray();
	scr_addNPCCellToGrid();
}