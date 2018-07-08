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


for(var i = 0; i <= patrolRange; i += precision) {
	if(miny - precision >= 0 && scr_collisionPointWithRoomLimits(x, miny - precision) == false) {
		miny -= precision;
	}
	
	if(maxy + precision <= room_height && scr_collisionPointWithRoomLimits(x, maxy + precision) == false) {
		maxy += precision;
	}
	
	if(minx - precision >= 0 && scr_collisionPointWithRoomLimits(minx - precision, y) == false) {
		minx -= precision;
	}
	
	if(maxx + precision <= room_width && scr_collisionPointWithRoomLimits(maxx + precision, y) == false){
		maxx += precision;
	}
	
	if((miny == 0			|| scr_collisionPointWithRoomLimits(x, miny) == true) &&
	   (maxy == room_height || scr_collisionPointWithRoomLimits(x, maxy) == true) &&
	   (minx == 0			|| scr_collisionPointWithRoomLimits(minx, y) == true) &&
	   (maxx == room_width	|| scr_collisionPointWithRoomLimits(maxx, y) == true)) {
		break;
	}
}

ds_list_add(patrolRectangle, minx, miny, maxx, maxy);

return patrolRectangle;