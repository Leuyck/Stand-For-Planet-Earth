/// @description 
if(scr_isInView(20)){
	scr_calculShadowForMovingInstance(1, 0.5);
}else{
	for(var ii =0; ii<array_height_2d(movingInstanceDetected); ii++){
		movingInstanceDetected[ii,1] = noone;
		movingInstanceDetected[ii,2] = noone;
		movingInstanceDetected[ii,3] = noone;
		movingInstanceDetected[ii,4] = noone;
		movingInstanceDetected[ii,5] = noone;
		movingInstanceDetected[ii,6] = noone;	
	}
	movingInstanceDetected =noone;
}

lx=x;
ly=y;

if(radius != abs(image_xscale*(sprite_get_width(spr_lumiere)/2)))
{
	scr_initializeLumiere();
	image_xscale = radius/(sprite_get_width(spr_lumiere)/2);
	image_yscale = image_xscale;
}

