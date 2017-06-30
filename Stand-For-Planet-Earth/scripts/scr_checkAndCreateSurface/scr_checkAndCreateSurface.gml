///@description scr_checkAndCreateSurface(xSize,ySize,surfname)
var xSize = argument0;
var ySize = argument1;
var surface = argument2;

if( !surface_exists(surface) ){
	surface = surface_create(xSize,ySize);
}
return surface;