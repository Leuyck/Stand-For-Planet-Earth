///scr_deployHero();

if(enableDeploy && !deployed && state!= "dead"){
	if(onSpawnVehicle){
		state = "notDeployed";
		image_index=0;
	}else{
		if(state != "deploying"){
			state = "deploying"
			image_index = 0;
			audio_play_sound(deploiementSound,1,false)
		}
	    if(image_index>image_number-1){
	        deployed = true;
	    }
	}
}else if(!enableDeploy){
    deployed = true;
}
