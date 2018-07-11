///@description scr_calculPatrolRectangle(x, y);
var patrolRectangle = ds_list_create();

var xx = argument[0];
var yy = argument[1];

maxx = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "right");
minx = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "left");
maxy = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "top");
miny = scr_getClosestPointToRoomLimits(xx, yy, patrolRange, "bottom");

ds_list_add(patrolRectangle, minx, miny, maxx, maxy);

return patrolRectangle;