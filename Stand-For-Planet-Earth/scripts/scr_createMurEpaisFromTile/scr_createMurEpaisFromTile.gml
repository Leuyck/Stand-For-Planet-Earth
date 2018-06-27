///scr_createMurEpaisFromTile(tile layer)

var tileLayer = argument[0];
var gridSize = 64;
for(var i = 0; i<room_height;i+=gridSize){
	for (var j = 0; j < room_width;j+=gridSize) {
		var cellx = tilemap_get_cell_x_at_pixel(layer_tilemap_get_id(tileLayer), j, i);
		var celly = tilemap_get_cell_y_at_pixel(layer_tilemap_get_id(tileLayer), j, i);
		if(cellx!=-1){
			var tileCell = tilemap_get(layer_tilemap_get_id(tileLayer), cellx, celly);
			scr_createMurEpaisInstanceFromTileCell(tileCell,j+gridSize/2,i+gridSize/2);
		}
	}
}
layer_destroy(tileLayer)