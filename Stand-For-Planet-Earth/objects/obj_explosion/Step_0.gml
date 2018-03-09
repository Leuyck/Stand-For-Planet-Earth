/// @description 
scale = range/sprite_width;
image_xscale = scale;
image_yscale = scale;

if(image_index >= image_number-1){
	instance_destroy();	
}