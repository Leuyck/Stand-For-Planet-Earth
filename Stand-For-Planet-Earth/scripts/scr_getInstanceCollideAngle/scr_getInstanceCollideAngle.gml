///@description scr_getInstanceCollideAngle(down,angleChecked,searchingPointPrec,objectMakingShadow);
var angleUpOrDown = argument0;
var finderAngle = argument1;
var precision = argument2;
var object = argument3;
var instanceChecked = argument4;
var precise = argument5;

var angleToCenterOfInstance = finderAngle;

if(object_get_parent(instanceChecked.object_index) == obj_localPlayer || instanceChecked.object_index == obj_lightCollisionCircle){
	if(angleUpOrDown == "down")		
	{		
		while (collision_line(x,y,x+lengthdir_x(radius,finderAngle-precision),y+lengthdir_y(radius,finderAngle-precision),instanceChecked,precise,true)==instanceChecked)
		{
			finderAngle-=precision;
			if(finderAngle ==-1) then finderAngle = 359;
		}
		var instanceCollideAngle = finderAngle+1//+5*precision;//to get a point inside the bbox for sure. Factor 5 to avoid glitch
		
		if(abs(angle_difference(angleToCenterOfInstance,instanceCollideAngle))<1){///avoid the shadow to be to small;
			instanceCollideAngle = angleToCenterOfInstance-1;
		}
	}
	else if (angleUpOrDown = "up")
	{
		while (collision_line(x,y,x+lengthdir_x(radius,finderAngle+precision),y+lengthdir_y(radius,finderAngle+precision),instanceChecked,precise,true)==instanceChecked) 
		{
			finderAngle+=precision;
			if(finderAngle ==360) then finderAngle = 0;
		}
		var instanceCollideAngle = finderAngle-1//-5*precision; //to get a point inside the bbox for sure. Factor 5 to avoid glitch
		
		if(abs(angle_difference(angleToCenterOfInstance,instanceCollideAngle))<1){///avoid the shadow to be to small;
			instanceCollideAngle = angleToCenterOfInstance+1;
		}
	}
}else{
	if(angleUpOrDown == "down")		
	{		
		while (collision_line_first(x,y,x+lengthdir_x(radius,finderAngle-precision),y+lengthdir_y(radius,finderAngle-precision),object,precise,true)==instanceChecked)
		{
			finderAngle-=precision;
			if(finderAngle ==-1) then finderAngle = 359;
		}
		if(collision_line_first(x,y,x+lengthdir_x(radius,finderAngle-1),y+lengthdir_y(radius,finderAngle-1),object,precise,true)!=noone){
			var instanceCollideAngle = finderAngle;
		}else{
			var instanceCollideAngle = finderAngle+1//+5*precision;//to get a point inside the bbox for sure. Factor 5 to avoid glitch
		}
	}
	else if (angleUpOrDown = "up")
	{
		while (collision_line_first(x,y,x+lengthdir_x(radius,finderAngle+precision),y+lengthdir_y(radius,finderAngle+precision),object,precise,true)==instanceChecked) 
		{
			finderAngle+=precision;
			if(finderAngle >=360) then finderAngle+= 360;
		}
		if(collision_line_first(x,y,x+lengthdir_x(radius,finderAngle+1),y+lengthdir_y(radius,finderAngle+1),object,precise,true)!=noone){
			var instanceCollideAngle = finderAngle;
		}else{
			var instanceCollideAngle = finderAngle-1//+5*precision;//to get a point inside the bbox for sure. Factor 5 to avoid glitch
		}
	}
}
return instanceCollideAngle;
