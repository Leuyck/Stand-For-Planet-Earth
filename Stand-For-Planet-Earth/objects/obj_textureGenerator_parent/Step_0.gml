/// @description 
if(initialized == false){
	var tileDataOfFirstCell = 1;
	
	var listOfXAndTileData = scr_getTileDataOfOtherTileMapAround();
	if(listOfXAndTileData != noone){
		var distFromXStart  = ds_list_find_value(listOfXAndTileData,0) - x_start;
		var tileDataFound = ds_list_find_value(listOfXAndTileData,1)
		ds_list_destroy(listOfXAndTileData);
		tileDataOfFirstCell = scr_getTileDataOfFirstCellFromTile(distFromXStart,tileDataFound);
	}

	scr_setTilesOnTilemap(tileDataOfFirstCell)

	initialized = true;
}