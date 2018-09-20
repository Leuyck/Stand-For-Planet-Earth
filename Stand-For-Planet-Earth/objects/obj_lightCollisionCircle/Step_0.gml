/// @description 
persistent = parent.persistent;

if(!instance_exists(parent)){
	instance_destroy();	
}
image_angle = parent.image_angle;

x=parent.x+lengthdir_x(offsetDistance,image_angle+180)
y=parent.y+lengthdir_y(offsetDistance,image_angle+180)
size = parent.size;

state="alive";
if(parent.state == "death"){
	state = "death"	;
}
