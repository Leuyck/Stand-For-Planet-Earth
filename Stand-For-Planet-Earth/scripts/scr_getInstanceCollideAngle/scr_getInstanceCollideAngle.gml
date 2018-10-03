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
		while (collision_line(x,y,x+lengthdir_x(radius,finderAngle-precision),y+lengthdir_y(radius,finderAngle-precision),instanceChecked,precise,true)==instanceChecked)
		{
			finderAngle-=precision;
			if(finderAngle ==-1) then finderAngle = 359;
		}
		var instanceCollideAngle = finderAngle;
	}
	else if (angleUpOrDown = "up")
	{
		while (collision_line(x,y,x+lengthdir_x(radius,finderAngle+precision),y+lengthdir_y(radius,finderAngle+precision),instanceChecked,precise,true)==instanceChecked) 
		{
			finderAngle+=precision;
			if(finderAngle ==360) then finderAngle = 0;
		}
		var instanceCollideAngle = finderAngle;
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
		var instanceCollideAngle = finderAngle;
	}
}
return instanceCollideAngle;
