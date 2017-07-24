///@description scr_checkAndCreateSurface(xSize,ySize,surfname)
var xSize = argument0;
var ySize = argument1;
var surface = argument2;

if( !surface_exists(surface) ){
	surface = surface_create(xSize,ySize);
}

if(radius*2!=surface_get_height(surface )|| radius*2!=surface_get_width(surface))
{
	surface_resize(surface,radius*2,radius*2);
}
return surface;