///scr_setCharacterImageAngleWithFriction(targetAngle,friction)

var targetAngle = argument[0] 
var rotateFriction = argument[1]

if(angle_difference(image_angle,targetAngle)<=rotateFriction && angle_difference(image_angle,targetAngle)>=-rotateFriction){
			image_angle = targetAngle
}
else if(angle_difference(image_angle,targetAngle)<-10){
	image_angle+=rotateFriction;
	if(image_angle >=360){
		image_angle = 0;	
	}
}else if(angle_difference(image_angle,targetAngle)>10){
	image_angle-=rotateFriction;
	if(image_angle <0){
		image_angle = 360;	
	}
}
return image_angle;