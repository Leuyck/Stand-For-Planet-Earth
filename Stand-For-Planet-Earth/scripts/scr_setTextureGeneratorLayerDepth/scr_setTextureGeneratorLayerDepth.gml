///scr_setTextureGeneratorLayerDepth()

layerDepth = -1
arrayOfLayers = layer_get_all();
for(var i = 0; i<array_length_1d(arrayOfLayers);++i){
	var tempDepth = layer_get_depth(arrayOfLayers[i]);
	if(tempDepth>layerDepth){
		layerDepth = tempDepth
	}
}
layerDepth-=1;
return layerDepth;