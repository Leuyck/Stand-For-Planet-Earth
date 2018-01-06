/// @description 
var alreadyExists = false;
with(obj_glitch){
	if(self.parent == other.id){
		alreadyExists = true;	
		self.alarm[0] = self.glitchDuration;///refresh glitch
	}
}
if(alreadyExists == false){///create glitch
	var glitch = instance_create_depth(x,y,depth,obj_glitch)
	glitch.parent = self.id;
}