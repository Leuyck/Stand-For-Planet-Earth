///scr_getPositionWithoutCollision(x1,y1,x2,y2,object);
//      x1,y2       first point on collision line, real
//      x2,y2       second point on collision line, real
//      object      which objects to look for (or all), real


var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var object = argument4;
var coordinates = ds_list_create();
var distanceX = x2 - x1;
var distanceY = y2 - y1;
var collision = place_meeting(x2,y2,object);

if (collision ==true) {
    while ((abs(distanceX) >= 1) || (abs(distanceY) >= 1)) {
        distanceX /= 2;
        distanceY /= 2;
		//show_message(string(distanceX));
        var i = place_meeting(x2,y2,object);
        if (i == true) {
            x2 -= distanceX;
            y2 -= distanceY;
        }else{
            x2 += distanceX;
            y2 += distanceY;
        }
    }
}

ds_list_add(coordinates,x2,y2);
return coordinates;