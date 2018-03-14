/// @description 
image_angle = direction;
if(point_distance(x,y,obj_dropHeros.x,obj_dropHeros.y)<500){
	path_speed =0
	path_end();
	scr_ease_towards_direction(270,1,0.99)
}
if(point_distance(x,y,obj_dropHeros.x,obj_dropHeros.y)<1){
	path_end();
	alarm[0] =2 * room_speed;
}


