/// @description 

if(imageScale >=1 && scaleModifier>0){
	scaleModifier = -scaleModifier;	
}
if(imageScale<=0.9 && scaleModifier <0){
	scaleModifier = -scaleModifier;	
}
imageScale += scaleModifier;
image_xscale = clamp(imageScale,0.9,1)
image_yscale = clamp(imageScale,0.9,1)


if(angle>= 10 || angle<=-10) {
	orientation*= -1;
}
angle+=orientation*0.1
image_angle = angle;
