/// @description 
var alpha = 1;
if(instance_exists(parent) && !parent.selected){
	alpha = 0.2
}

if(instance_exists(parent) && !is_undefined(parent.locked) && parent.locked){
	color = color2;	
}else if(position_meeting(mouse_x,mouse_y,self.id)&& mouse_check_button(mb_left)){
	color = color2;	
}else{
	color = color1;	
}
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,color,alpha);