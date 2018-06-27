/// @description 
image_angle-=rotationSpeed;

if(imageScale >=1 && scaleModifier>0){
	scaleModifier = -scaleModifier;	
}
if(imageScale<=0.7 && scaleModifier <0){
	scaleModifier = -scaleModifier;	
}
imageScale += scaleModifier;
image_xscale = clamp(imageScale,0.7,1)
image_yscale = clamp(imageScale,0.7,1)

