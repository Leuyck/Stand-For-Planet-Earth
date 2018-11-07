///@description scr_decalCollisionCoordinates(xyCoordinatesList, decal angle);
//decal a bit the coordinates of collision with lights for static items to avoid light glitch in the shadow when items are next to each other.

var coordinates = argument[0];
var angle = argument[1]

if(angle >=360) then angle -=360;
else if(angle<0) then angle+=360;

//var decaledCoordinates = ds_list_create();

var distance = point_distance(lx,ly,ds_list_find_value(coordinates,0),ds_list_find_value(coordinates,1));
distance+=4*dsin(0.5)*distance;
var xDecal = x+lengthdir_x(distance,angle);
var yDecal = y+lengthdir_y(distance,angle);

//ds_list_add(decaledCoordinates,xDecal);
//ds_list_add(decaledCoordinates,yDecal);
ds_list_replace(coordinates,0,xDecal);
ds_list_replace(coordinates,1,yDecal);

return coordinates;