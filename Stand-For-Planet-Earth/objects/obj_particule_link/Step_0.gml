/// @description 

//if(speed <0){
	speed = 15;	
//}
var angleWithTarget = angle_difference(direction,point_direction(x,y,linkedTarget.x,linkedTarget.y));
var angleForEachStep = angleWithTarget /(distance_to_point(linkedTarget.x,linkedTarget.y)/speed)
if(angleWithTarget <1 && angleWithTarget >-1){
	direction = point_direction(x,y,linkedTarget.x,linkedTarget.y);	
}else /*if (angleWithTarget<0)*/{
	direction -=angleForEachStep
	//direction+=(angleWithTarget/(flyingTime*room_speed));
}/*else if(angleWithTarget>0){
	direction-=angleForEachStep;
}*/

if(position_meeting(x,y,linkedTarget)){
	instance_destroy();	
}