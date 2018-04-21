///@description scr_checkAndCreateSurface(xSize,ySize,surfname)
var surfWidth = argument0;
var surfHeight = argument1;
var surface = argument2;

if( !surface_exists(surface) ){
	surface = surface_create(surfWidth,surfHeight);
}else if(surface_get_height(surface)!=surfHeight || surface_get_width(surface)!=surfWidth){
	surface_resize(surface,surfWidth,sufrHeight)	
}
return surface;