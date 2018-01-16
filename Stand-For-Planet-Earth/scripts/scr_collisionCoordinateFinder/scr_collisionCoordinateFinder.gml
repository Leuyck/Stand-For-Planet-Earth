///@description scr_collisionCoordinateFinder(x,y,dir,range,object,instance,prec,notme,objetId)
//
//  Returns the exact distance to the nearest instance of an object in a
//  given direction from a given point, or noone if no instance is found.
//  The solution is found in log2(range) collision checks.
//
//      x,y         position in room, real
//      dir         direction to look in degrees, real
//      range       the greatest distance to look in pixels, real
//      object      which objects to look for (or all), real
//      prec        true to use precise collision checking, bool
//      notme       true to ignore the calling instance, bool
//		objectId	the id of the instance to check collision


    var ox,oy,dir,range,object,instanceChecked,prec,notme,dx,dy,sx,sy;
    ox = argument0;
    oy = argument1;
    dir = argument2;
    range = argument3;
    object = argument4;
	instanceChecked = argument5;
    prec = argument6;
    notme = argument7;
    sx = lengthdir_x(range,dir);
    sy = lengthdir_y(range,dir);
    dx = ox + sx;
    dy = oy + sy;
	
	var coordinates = ds_list_create();
	
if(object_get_parent(instanceChecked.object_index) == obj_localPlayer){
	if (collision_line(ox,oy,dx,dy,instanceChecked,prec,notme) >= 0){
		while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
		    sx /= 2;
		    sy /= 2;
		    if (collision_line(ox,oy,dx,dy,instanceChecked,prec,notme) < 0) {
		        dx += sx;
		        dy += sy;
		    }else{
		        dx -= sx;
		        dy -= sy;
		    }
		}
		ds_list_add(coordinates,dx);
		ds_list_add(coordinates,dy);
	}
	else
	{
		ds_list_add(coordinates,noone);
		ds_list_add(coordinates,noone);
	}
}else{
	if (collision_line_first(ox,oy,dx,dy,object,prec,notme) >= 0){
		while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
		    sx /= 2;
		    sy /= 2;
		    if (collision_line_first(ox,oy,dx,dy,object,prec,notme) < 0) {
		        dx += sx;
		        dy += sy;
		    }else{
		        dx -= sx;
		        dy -= sy;
		    }
		}
		ds_list_add(coordinates,dx);
		ds_list_add(coordinates,dy);
	}
	else
	{
		ds_list_add(coordinates,noone);
		ds_list_add(coordinates,noone);
	}
}
return coordinates;