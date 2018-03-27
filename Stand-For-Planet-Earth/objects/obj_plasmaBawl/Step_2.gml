/// @description 
if(parent.sprite_index == spr_BadaBot_move){
	var offsetDist = point_distance(sprite_get_xoffset(parent.sprite_index),sprite_get_yoffset(parent.sprite_index),sprite_get_xoffset(parent.sprite_index),ds_list_find_value(plasmaYcoordinates,parent.image_index));
	var angle = parent.image_angle+(sign(sprite_get_yoffset(parent.sprite_index)-ds_list_find_value(plasmaYcoordinates,parent.image_index))*90);
	self.x = parent.x+lengthdir_x(offsetDist,angle);
	self.y = parent.y+lengthdir_y(offsetDist,angle);
}else{
	self.x = parent.x;
	self.y = parent.y;
}
image_angle = parent.image_angle;