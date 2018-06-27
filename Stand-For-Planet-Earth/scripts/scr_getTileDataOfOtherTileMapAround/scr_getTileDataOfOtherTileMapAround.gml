///scr_getTileDataOfOtherTileMapAround(wayToCheck);

var previousTileData = -1;
var listToReturn = ds_list_create();

if(!checkBottomTile){
	for(var i = x_start;i<x_end; i +=cellSize){
		with(object_index){
			if(self.initialized){
				previousTileData = tilemap_get_at_pixel(self.tilemap,i,other.y_start-1)
				if(previousTileData != -1){
					ds_list_add(listToReturn,i,previousTileData);
					return listToReturn;
				}
			}
		}
	}
}else{
	for(var i = x_start;i<x_end; i +=cellSize){
		with(object_index){
			if(self.initialized){
				previousTileData = tilemap_get_at_pixel(self.tilemap,i,other.y_end+1)
				if(previousTileData != -1){
					ds_list_add(listToReturn,i,previousTileData);
					return listToReturn;
				}
			}
		}
	}
}

return noone;