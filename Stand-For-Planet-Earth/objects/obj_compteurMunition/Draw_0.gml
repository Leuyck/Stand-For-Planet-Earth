/// @description 
		
draw_set_halign(fa_right);
draw_set_font(fnt_2);
draw_set_color(c_white);
		
if(parent.deployed){
	var xx = 0;
	var yy = 0;
	///same as laser
	if(ds_list_find_index(spriteAvailableForIndicator,parent.sprite_index) !=-1){
		var msg = indicatorCoordinates[parent.sprite_index,floor(parent.image_index)]; //string to split
		var coordinates = scr_getLaserCoordinatesList(msg);

		var relativeX1 = ds_list_find_value(coordinates,0)- sprite_get_xoffset(parent.sprite_index);///relative Position in the sprite
		var relativeY1 = ds_list_find_value(coordinates,1)- sprite_get_yoffset(parent.sprite_index);

		ds_list_destroy(coordinates)

		xx = parent.x + lengthdir_x(relativeX1, parent.image_angle) - lengthdir_y(relativeY1, parent.image_angle);
		yy = parent.y + lengthdir_y(relativeX1, parent.image_angle) + lengthdir_x(relativeY1, parent.image_angle);
	
		textAngle = laser.laserAngle;

		draw_text_transformed(xx,yy,string(currentMunition),1,1,textAngle);
	}
}