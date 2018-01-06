/// @description 

if(speed >0){ 
	speed -=decreaseSpeed
	image_xscale-=0.05;
	image_yscale -=0.05;
	image_angle +=rotationSpeed;
}else{
	speed = 0;	
}

