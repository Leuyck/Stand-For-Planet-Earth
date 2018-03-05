///scr_deployHero(enable);

//deployEnable = argument[0]

if(enableDeploy && !deployed && state!= "dead"){
	if(state != "deploying"){
		state = "deploying"
		image_index = 0;
	}
    if(image_index>image_number-1){
        deployed = true;
    }
}else if(!enableDeploy){
    deployed = true;
}
