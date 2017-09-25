///@description scr_clearGridCellAndArray();

for(var i = 0; i<array_height_2d(tempCell);i++){
	mp_grid_clear_cell(grid,tempCell[i,0],tempCell[i,1]);
}
tempCell=array_create(0,0);