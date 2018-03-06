/// @description 
stepsPerSec = 300/duration;
if(instance_exists(parent)){
	if(followParent){
		x=parent.x+xOffset;
		y=parent.y+yOffset;
	}
}else{
	instance_destroy()	
}

if(timeRemaining <= -1){
	timeRemaining = duration;
}
if(start){
	timeRemaining-=1/room_speed;	
}
if(timeRemaining == 0){
	instance_destroy();
}