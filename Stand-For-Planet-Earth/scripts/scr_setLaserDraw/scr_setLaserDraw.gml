///scr_setLaserDraw();
var laserBeginX = x + lengthdir_x(relativeBoutCanonX, image_angle) - lengthdir_y(relativeBoutCanonY, image_angle);
var laserBeginY =  y + lengthdir_y(relativeBoutCanonX, image_angle) + lengthdir_x(relativeBoutCanonY, image_angle);
var laserLength = 200;

if(state == "firing1"){
	draw_set_alpha(1)
}else{
	draw_set_alpha(0.2);	
}
draw_line_color(laserBeginX,laserBeginY, laserBeginX+lengthdir_x(laserLength,image_angle),laserBeginY+lengthdir_y(laserLength,image_angle),c_red,c_red)
draw_set_alpha(1);