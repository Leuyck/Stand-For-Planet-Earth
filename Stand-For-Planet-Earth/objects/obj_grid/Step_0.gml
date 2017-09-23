/// @description 
for(var i = 0; i<array_height_2d(tempCell);i++){
	mp_grid_clear_cell(grid,tempCell[i,0],tempCell[i,1]);
}
tempCell = noone;

with(obj_localNpc){
	if(self.id !=other.owner){
		var tempXCell = floor((self.x-other.minx)/64);
		var tempYCell = floor((self.y-other.miny)/64);
		var placeInArray = array_height_2d(other.tempCell);
		other.tempCell[placeInArray,0]=tempXCell;
		other.tempCell[placeInArray,1]=tempYCell;
		mp_grid_add_cell(other.grid,tempXCell,tempYCell);
	}
}