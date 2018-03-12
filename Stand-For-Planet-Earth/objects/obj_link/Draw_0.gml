/// @description 
var distanceToLinkTarget = point_distance(parent.x,parent.y,parent.linkTarget.x,parent.linkTarget.y);
var spriteWidth = sprite_get_width(spr_link)
image_angle = point_direction(x,y,parent.linkTarget.x,parent.linkTarget.y)


var linkAlreadyDraw = 0
while(spriteWidth + (linkAlreadyDraw*spriteWidth) < distanceToLinkTarget){
	draw_sprite_ext(spr_link,-1,xx+lengthdir_x(linkAlreadyDraw*spriteWidth,image_angle), yy+lengthdir_y(linkAlreadyDraw*spriteWidth,image_angle),1,1,image_angle,c_white,1)
	linkAlreadyDraw++
}
draw_sprite_general(spr_link,-1,0,0,distanceToLinkTarget-spriteWidth*linkAlreadyDraw,sprite_get_height(spr_link),xx+lengthdir_x(linkAlreadyDraw*spriteWidth,image_angle), yy+lengthdir_y(linkAlreadyDraw*spriteWidth,image_angle),1,1,image_angle,c_white,c_white,c_white,c_white,1)
