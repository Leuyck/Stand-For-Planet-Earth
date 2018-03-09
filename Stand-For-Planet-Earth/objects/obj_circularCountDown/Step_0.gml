/// @description 
stepsPerSec = 300/(duration/room_speed);

if(instance_exists(parent)){
	if(followParent){
		x=parent.x+xOffset;
		y=parent.y+yOffset;
	}
}else{
	instance_destroy()	
}

if(timeRemaining ==noone){
	timeRemaining = duration;
}
if(start){
	timeRemaining-=1;	
}
if(timeRemaining < 0 && timeRemaining !=noone){
	instance_destroy();
}