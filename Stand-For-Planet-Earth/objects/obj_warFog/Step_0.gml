/// @description 
if(!enabled){
	if(attachedWarFogNumber!=noone ){
		with(obj_warFog){
			if (self.warFogNumber == other.attachedWarFogNumber && self.enabled){
				other.enabled = true;
				break;
			}
		}
	}
}else{
	alpha-=apparitionSpeed;	
}

if(alpha<=0){
	instance_destroy();
}