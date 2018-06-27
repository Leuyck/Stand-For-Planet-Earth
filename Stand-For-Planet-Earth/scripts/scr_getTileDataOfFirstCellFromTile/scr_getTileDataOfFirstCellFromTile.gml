///scr_getTileDataOfFirstCellFromTile(distFromXStart,tileDataFound)

var distFromXStart = argument[0];
var tileDataFound = argument[1];

if(!checkBottomTile){
	var hCellFromXStart = distFromXStart/cellSize;
	var tileDataMinOnThisLine =  cellsPerLine * floor((tileDataFound+cellsPerLine)/cellsPerLine) + 1;
	var tileDataMaxOnThisLine = tileDataMinOnThisLine + cellsUsedPerLine;
		
	if(distFromXStart ==0){
		tileDataOfFirstCell = tileDataFound+cellsPerLine
	}else{
		tileDataOfFirstCell = tileDataFound+cellsPerLine + sign(distFromXStart)*(-hCellFromXStart);
		while(tileDataOfFirstCell > tileDataMaxOnThisLine){
			tileDataOfFirstCell = tileDataMinOnThisLine + ( tileDataOfFirstCell-tileDataMaxOnThisLine);
		}
		while(tileDataOfFirstCell<tileDataMinOnThisLine){
			tileDataOfFirstCell = tileDataMaxOnThisLine - (tileDataMinOnThisLine - tileDataOfFirstCell)+1;
		}
	}
}else{
	var distFromYStart = sprite_height;
	var vCellFromXStart = distFromYStart/cellSize;
	var tileDataMinOnLastLine =  cellsPerLine * floor((tileDataFound-cellsPerLine)/cellsPerLine) + 1;//430
	var tileDataMinOnThisLine = tileDataMinOnLastLine-(cellsPerLine*vCellFromXStart);///-1220
	if(tileDataMinOnThisLine<1) then tileDataMinOnThisLine = tileDataMinOnThisLine mod (cellsPerColonne*cellsPerLine) + (cellsPerColonne*cellsPerLine);
			
	var tileDataMaxOnThisLine = tileDataMinOnThisLine + cellsUsedPerLine;
		
	if(distFromXStart ==0){
		tileDataOfFirstCell = tileDataFound-(cellsPerLine*vCellFromXStart);
		if(tileDataOfFirstCell<1) then tileDataOfFirstCell = tileDataOfFirstCell mod (cellsPerColonne*cellsPerLine) + (cellsPerColonne*cellsPerLine);
	}else{
		tileDataOfFirstCell = tileDataFound-(cellsPerLine*vCellFromXStart)+ sign(distFromXStart)*(-hCellFromXStart);
		if(tileDataOfFirstCell<1) then tileDataOfFirstCell = tileDataOfFirstCell mod (cellsPerColonne*cellsPerLine) + (cellsPerColonne*cellsPerLine);
				
		while(tileDataOfFirstCell > tileDataMaxOnThisLine){
			tileDataOfFirstCell = tileDataMinOnThisLine + ( tileDataOfFirstCell-tileDataMaxOnThisLine);
		}
		while(tileDataOfFirstCell<tileDataMinOnThisLine){
			tileDataOfFirstCell = tileDataMaxOnThisLine - (tileDataMinOnThisLine - tileDataOfFirstCell)+1;
		}
	}
}

return tileDataOfFirstCell;