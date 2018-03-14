/// @description 
path_speed = 10;

spawnPath = path_add();
path_add_point(spawnPath,x,y,100)
path_add_point(spawnPath,obj_dropHeros.x,obj_dropHeros.y,100)

var distanceToDropHeros = point_distance(x,y,obj_dropHeros.x,obj_dropHeros.y);
var angle = point_direction(x,y,obj_dropHeros.x,obj_dropHeros.y)-90;
if(angle<0) then angle+=360;
path_add_point(spawnPath,obj_dropHeros.x+lengthdir_x(distanceToDropHeros,angle),obj_dropHeros.y+lengthdir_y(distanceToDropHeros,angle),100);
path_set_kind(spawnPath,0);
path_set_closed(spawnPath,false)
path_start(spawnPath,10,path_action_stop,false)

alarm[0] = -1;