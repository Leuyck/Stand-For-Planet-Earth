/// @description 
if(alarm[0]>0){
	visible = false;	
}
if(alarm[0] <0){
	if(selected){
		if(lastGlitch == noone){
			scr_createGlitch(self.id,obj_glitch);
			lastGlitch = glitch;
		}
	}else{
		if(instance_exists(lastGlitch)){
			instance_destroy(lastGlitch);
		}
		lastGlitch = noone;
	}
}

