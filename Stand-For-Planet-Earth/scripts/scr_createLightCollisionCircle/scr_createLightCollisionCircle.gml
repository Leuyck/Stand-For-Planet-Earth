///scr_createLightCollisionCircle(80,114,85,154);
var xMin = argument[0];
var xMax = argument[1];
var yMin = argument[2];
var yMax = argument[3];

var xCenter = xMin+(xMax -xMin)/2
var yCenter = yMin+(yMax -yMin)/2
var offsetDistance = point_distance(sprite_xoffset,sprite_yoffset,xCenter,yCenter);

var lightCollisionCircle = instance_create_depth(x+lengthdir_x(offsetDistance,-image_angle),y+lengthdir_y(offsetDistance,-image_angle),depth,obj_lightCollisionCircle);
lightCollisionCircle.parent = id;
lightCollisionCircle.image_xscale = (xMax-xMin)/100;
lightCollisionCircle.image_yscale = (yMax-yMin)/100;
lightCollisionCircle.offsetDistance = offsetDistance