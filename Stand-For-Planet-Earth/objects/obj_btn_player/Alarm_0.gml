/// @description glitch alarm

if(imageIndex == 0){
	imageIndex =1;
	alarm[0] = glitchDuration+choose(0,3,6);
}
else if(imageIndex == 1){
	imageIndex =0;
	alarm[0] = choose(0.1,0.3,0.5,0.9,1,1.5,2,2.5,3,3.5,4,5)*room_speed;
}