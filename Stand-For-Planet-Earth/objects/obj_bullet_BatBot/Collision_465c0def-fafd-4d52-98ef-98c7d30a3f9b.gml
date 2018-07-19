/// @description 

var dir = point_direction(x,y,other.x,other.y);
var distance =  point_distance(x,y,other.x,other.y);
var xx = x+lengthdir_x(distance,dir);
var yy = y+lengthdir_y(distance,dir);
var projectionAngle =35;

scr_createBulletNPCImpactParticules(other.id,xx,yy,dir,projectionAngle);