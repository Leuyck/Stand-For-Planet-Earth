/// @description 
distanceToSpawnHeros = point_distance(x,y,obj_spawnHeros.x,obj_spawnHeros.y);
angleToSpawnHeros = point_direction(x,y,obj_spawnHeros.x,obj_spawnHeros.y);
escapeAngle = angleToSpawnHeros-90
if(escapeAngle<0) then escapeAngle+=360;

xOrigin = x;
yOrigin = y;
xEnd = obj_spawnHeros.x+lengthdir_x(distanceToSpawnHeros,escapeAngle);
yEnd = obj_spawnHeros.y+lengthdir_y(distanceToSpawnHeros,escapeAngle);

spawnPath = noone
state = "coming"

maximumSize = 1.1;
image_xscale = maximumSize;
image_yscale = maximumSize;

stayDownDuration *=room_speed;

if(usedAsHeroDrop){
	scr_createDisabledHerosOnSpawnVehicle();
}


alarm[0] = -1;
