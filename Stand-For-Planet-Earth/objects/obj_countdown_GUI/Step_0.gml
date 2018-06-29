/// @description 
if(timeRemaining ==noone){
	timeRemaining = duration;
}else{
	timeRemaining-=1;	
}
if(timeRemaining < 0 && timeRemaining !=noone){
	if(instance_exists(parent)){
		parent.countdownIsOver = true;
	}
	instance_destroy();
}