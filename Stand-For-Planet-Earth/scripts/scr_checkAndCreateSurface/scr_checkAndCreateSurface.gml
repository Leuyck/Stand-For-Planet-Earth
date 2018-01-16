///@description scr_checkAndCreateSurface(xSize,ySize,surfname)
var surfWidth = argument0;
var surHeight = argument1;
var surface = argument2;

if( !surface_exists(surface) ){
	surface = surface_create(surfWidth,surHeight);
}else{
	surface_resize(surface,surfWidth,surHeight)	
}
return surface;