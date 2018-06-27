///scr_setTilesOnTilemap(initialTileData)

var initialTileData = argument[0];
var tileData = initialTileData

for(var j = 0; j<tilemap_vCell;++j){///for y
	var factor = j mod cellsPerColonne;
	tileData = factor*(cellsPerLine-1)+factor + initialTileData;
	if(tileData>cellsPerColonne*cellsPerLine) then tileData -=cellsPerColonne*cellsPerLine;
	var tileDataMinOnThisLine =  cellsPerLine * floor(tileData/cellsPerLine) + 1;
	var tileDataMaxOnThisLine = tileDataMinOnThisLine + cellsUsedPerLine;
	
	for(var i = 0; i<tilemap_hCell;++i){//for x
		if(tileData>tileDataMaxOnThisLine){
			tileData = tileDataMinOnThisLine;
		}
		tilemap_set(tilemap, tileData, i, j);
		tileData++
	}
	
}
