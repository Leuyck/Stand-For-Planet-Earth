/// @description 
if(init ==false){
	scr_initialize_grid(owner.patrolRectangle);
	init = true;
}

scr_clearGridCellAndArray();
scr_addNPCCellToGrid();