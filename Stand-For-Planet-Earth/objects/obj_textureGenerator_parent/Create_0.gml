/// @description 
cellsUsedPerLine = cellsPerLine -2; 

x_start = cellSize * round(x/cellSize)
y_start = cellSize * round(y/cellSize)
x_end = cellSize * round((x+sprite_width)/cellSize);
y_end = cellSize * round((y+sprite_height)/cellSize);

tilemap_hCell = (x_end - x_start)/cellSize;
tilemap_vCell = (y_end-y_start)/cellSize;

layerDepth = scr_setTextureGeneratorLayerDepth()

textureLayer = layer_get_id("tile_"+object_get_name(object_index));
if(textureLayer = -1) then textureLayer = layer_create(layerDepth,"tile_"+object_get_name(object_index));

tilemap = layer_tilemap_create(textureLayer, x_start, y_start, tileSet, tilemap_hCell, tilemap_vCell);

initialized = false;

