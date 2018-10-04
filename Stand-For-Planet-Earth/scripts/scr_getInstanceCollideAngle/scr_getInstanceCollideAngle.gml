///@description scr_getInstanceCollideAngle(down,angleChecked,searchingPointPrec,objectMakingShadow);
var angleUpOrDown = argument0;
var finderAngle = argument1;
var precision = argument2;
var object = argument3;
var instanceChecked = argument4;
var precise = argument5;

var angleToCenterOfInstance = finderAngle;
	
if(instanceChecked.object_index == obj_lightCollisionCircle || instanceChecked.object_index ==obj_door_parent ||object_get_parent(instanceChecked.object_index)==obj_door_parent){
	if(angleUpOrDown == "down")		
	{	
		//while (collision_line(x,y,x+lengthdir_x(radius,finderAngle-precision),y+lengthdir_y(radius,finderAngle-precision),instanceChecked,precise,true)==instanceChecked)
		//{
		//	finderAngle-=precision;
		//	if(finderAngle ==-1) then finderAngle = 359;
		//}
		//var time = get_timer();
		var precisionAngle = abs(angle_difference(point_direction(lx,ly,instanceChecked.x,instanceChecked.y),point_direction(lx,ly,instanceChecked.x+lengthdir_x(instanceChecked.sprite_width,instanceChecked.image_angle),instanceChecked.y+lengthdir_y(instanceChecked.sprite_width,instanceChecked.image_angle))));
		finderAngle = scr_getInstanceLimitCollideAngle(x,y,radius,finderAngle,-precisionAngle*2,instanceChecked,precise,true);
		//show_message(string(get_timer()-time));
		var instanceCollideAngle = finderAngle;
		//if(abs(angle_difference(angleToCenterOfInstance,instanceCollideAngle))<1){///avoid the shadow to be to small;
		//	instanceCollideAngle = angleToCenterOfInstance+1;
		//}
	}
	else if (angleUpOrDown = "up")
	{
		//while (collision_line(x,y,x+lengthdir_x(radius,finderAngle+precision),y+lengthdir_y(radius,finderAngle+precision),instanceChecked,precise,true)==instanceChecked) 
		//{
		//	finderAngle+=precision;
		//	if(finderAngle ==360) then finderAngle = 0;
		//}
		var precisionAngle = abs(angle_difference(point_direction(lx,ly,instanceChecked.x,instanceChecked.y),point_direction(lx,ly,instanceChecked.x+lengthdir_x(instanceChecked.sprite_width,instanceChecked.image_angle),instanceChecked.y+lengthdir_y(instanceChecked.sprite_width,instanceChecked.image_angle))));
		finderAngle = scr_getInstanceLimitCollideAngle(x,y,radius,finderAngle,precisionAngle*2,instanceChecked,precise,true);
		var instanceCollideAngle = finderAngle;
		//if(abs(angle_difference(angleToCenterOfInstance,instanceCollideAngle))<1){///avoid the shadow to be to small;
		//	instanceCollideAngle = angleToCenterOfInstance-1;
		//}
	}
}else{
	if(angleUpOrDown == "down")		
	{		
		while (collision_line_first(x,y,x+lengthdir_x(radius,finderAngle-precision),y+lengthdir_y(radius,finderAngle-precision),object,precise,true)==instanceChecked)
		{
			finderAngle-=precision;
			if(finderAngle ==-1) then finderAngle = 359;
		}
		var instanceCollideAngle = finderAngle;

	}
	else if (angleUpOrDown = "up")
	{
		while (collision_line_first(x,y,x+lengthdir_x(radius,finderAngle+precision),y+lengthdir_y(radius,finderAngle+precision),object,precise,true)==instanceChecked) 
		{
			finderAngle+=precision;
			if(finderAngle >=360) then finderAngle+= 360;
		}
		var instanceCollideAngle = finderAngle+1//+5*precision;//to get a point inside the bbox for sure. Factor 5 to avoid glitch
		
		
	}
}
return instanceCollideAngle;
