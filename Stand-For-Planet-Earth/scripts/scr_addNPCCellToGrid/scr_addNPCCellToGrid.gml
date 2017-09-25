///@description scr_addNPCCellToGrid();

with(obj_localNpc){
	if(self.id !=other.owner){
		if(distance_to_object(other.owner)<=200){
			var tempXCell = floor((self.x-other.minx)/other.cell_width);
			var tempYCell = floor((self.y-other.miny)/other.cell_height);
			scr_addVariableInto2dArray(other.tempCell, tempXCell, tempYCell)
			mp_grid_add_cell(other.grid,tempXCell,tempYCell);
		}
	}
}