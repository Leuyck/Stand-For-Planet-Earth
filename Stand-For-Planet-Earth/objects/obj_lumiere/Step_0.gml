/// @description 

scr_calculShadowForMovingInstance(1, 0.2);

lx=x;
ly=y;

if(radius != abs(image_xscale*(sprite_get_width(spr_lumiere)/2)))
{
	scr_initializeLumiere();
	image_xscale = radius/(sprite_get_width(spr_lumiere)/2);
	image_yscale = image_xscale;
}

