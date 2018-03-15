/// @description 
distanceToDropHeros = point_distance(x,y,obj_dropHeros.x,obj_dropHeros.y);
angleToDropHeros = point_direction(x,y,obj_dropHeros.x,obj_dropHeros.y);
escapeAngle = angleToDropHeros-90
if(escapeAngle<0) then escapeAngle+=360;

xOrigin = x;
yOrigin = y;
xEnd = obj_dropHeros.x+lengthdir_x(distanceToDropHeros,escapeAngle);
yEnd = obj_dropHeros.y+lengthdir_y(distanceToDropHeros,escapeAngle);

spd = 8;
spawnPath = noone
state = "coming"

startDecelerateDistance = 300;

dropingAngle = 0;
minimumSize = 0.9;

stayDownDuration = 1*room_speed;

alarm[0] = -1;
