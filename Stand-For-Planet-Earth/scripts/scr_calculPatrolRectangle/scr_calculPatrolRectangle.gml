///@description scr_calculPatrolRectangle(xA,yA,xB,yB);
//can be initiate with a rectangle with A corner and B other corner
var patrolRectangle = ds_list_create();
var precision = 5

var minx = argument[0];
var miny = argument[1];
var maxx = argument[2];
var maxy = argument[3];

if(minx>maxx){
	var temp = maxx;
	maxx = minx;
	minx=temp;
}
if(miny>maxy){
	var temp = maxy;
	maxy=miny;
	miny=temp;
}

if(DEBUG_NPC == true) {
	var temp = maxy;
	maxy = 0;
	maxy = temp;
}

maxx = scr_getClosestPointToRoomLimits(x, y, patrolRange, "right");
minx = scr_getClosestPointToRoomLimits(x, y, patrolRange, "left");
maxy = scr_getClosestPointToRoomLimits(x, y, patrolRange, "top");
miny = scr_getClosestPointToRoomLimits(x, y, patrolRange, "bottom");

ds_list_add(patrolRectangle, minx, miny, maxx, maxy);

return patrolRectangle;