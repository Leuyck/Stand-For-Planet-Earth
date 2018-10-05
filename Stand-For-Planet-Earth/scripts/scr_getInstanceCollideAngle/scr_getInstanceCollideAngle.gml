///@description scr_getInstanceCollideAngle(down,angleChecked,searchingPointPrec,objectMakingShadow);
var angleUpOrDown = argument0;
var finderAngle = argument1;
var precision = argument2;
var object = argument3;
var instanceChecked = argument4;
var precise = argument5;

var precisionAngle = 2 * abs(angle_difference(point_direction(lx,ly,instanceChecked.x,instanceChecked.y),point_direction(lx,ly,instanceChecked.x+lengthdir_x(instanceChecked.sprite_width,instanceChecked.image_angle),instanceChecked.y+lengthdir_y(instanceChecked.sprite_width,instanceChecked.image_angle))));

if(angleUpOrDown == "down") {	
	return scr_getInstanceLimitCollideAngle(x, y, radius, finderAngle, -precisionAngle, instanceChecked, precise, true);
}
else if (angleUpOrDown = "up") {
	return scr_getInstanceLimitCollideAngle(x, y, radius, finderAngle, precisionAngle, instanceChecked, precise, true);
}
