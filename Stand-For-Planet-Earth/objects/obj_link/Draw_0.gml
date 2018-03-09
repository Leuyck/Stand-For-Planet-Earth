/// @description 
var distanceToLinkTarget = point_distance(parent.x,parent.y,parent.linkTarget.x,parent.linkTarget.y);
var spriteWidth = sprite_get_width(spr_link)
image_angle = point_direction(x,y,parent.linkTarget.x,parent.linkTarget.y)


var linkAlreadyDraw = 0
while(spriteWidth + (linkAlreadyDraw*spriteWidth) < distanceToLinkTarget){
	draw_sprite_ext(spr_link,-1,x+lengthdir_x(linkAlreadyDraw*spriteWidth,image_angle), y+lengthdir_y(linkAlreadyDraw*spriteWidth,image_angle),1,1,image_angle,c_white,1)
	linkAlreadyDraw++
}

draw_sprite_general(spr_link,-1,0,0,distanceToLinkTarget-spriteWidth*linkAlreadyDraw,sprite_get_height(spr_link),x+lengthdir_x(linkAlreadyDraw*spriteWidth,image_angle), y+lengthdir_y(linkAlreadyDraw*spriteWidth,image_angle),1,1,image_angle,c_red,c_red,c_red,c_red,1)

//draw_sprite_general(spr_link,-1,0,0,distanceToLinkTarget,sprite_get_height(spr_link),x, y,1,1,image_angle,c_red,c_red,c_red,c_red,1)
