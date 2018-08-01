/// @description 
//image_angle-=rotationSpeed;

//if(imageScale >=1 && scaleModifier>0){
//	scaleModifier = -scaleModifier;	
//}
//if(imageScale<=0.7 && scaleModifier <0){
//	scaleModifier = -scaleModifier;	
//}
//imageScale += scaleModifier;
//image_xscale = clamp(imageScale,0.7,1)
//image_yscale = clamp(imageScale,0.7,1)

if(currentAccoup>0){
	if(angle>= 10 || angle<=-10) {
		orientation*= -1;
		currentAccoup -=1;
	}
	angle+=orientation*5
	image_angle = 0 + angle;
}else{
	image_angle = 0;	
}