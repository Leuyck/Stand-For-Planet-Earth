///scr_getInstanceLimitCollideAngle(x,y,distance,baseAngle,increment,instanceChecked,precision,notme);
var xx = argument[0];
var yy = argument[1];
var distance = argument[2];
var baseAngle = argument[3];
var increment = argument[4];
var object = argument[5]
var precision = argument[6];
var notMe=argument[7];

if(abs(increment) <= 0.2) then return baseAngle;

var newAngle = baseAngle + increment;
if(newAngle >= 360) then newAngle -= 360;
if(newAngle < 0) then newAngle += 360;

var collision = collision_line(xx, yy, xx + lengthdir_x(distance,newAngle), yy + lengthdir_y(distance,newAngle), object, precision, notMe);
if (collision != noone) {
	return scr_getInstanceLimitCollideAngle(xx, yy, distance, newAngle, increment/2, object, precision, notMe);
} else {
	return scr_getInstanceLimitCollideAngle(xx, yy, distance, baseAngle, increment/2, object, precision, notMe);
}
