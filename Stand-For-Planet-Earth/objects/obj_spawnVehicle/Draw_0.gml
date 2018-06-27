/// @description 
var sizeRatio = (image_xscale - 1)/(maximumSize-1);     //size ratio between 0 and 1 depending on image_xscale
draw_sprite_ext(spr_spawnVehicleShadow,0,x+lengthdir_x(40*sizeRatio+10,20),y+lengthdir_y(40*sizeRatio+10,20),image_xscale+image_xscale*sizeRatio/6,image_xscale+image_xscale*sizeRatio/6,image_angle,c_white,0.5);

draw_self();
