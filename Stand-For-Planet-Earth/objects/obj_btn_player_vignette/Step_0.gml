/// @description 
if(parent != noone){
	x = parent.x;
	y = parent.y;
}

image_index = 0;
image_speed = 0;

if(glitch != noone){
	if(!instance_exists(glitch)){
		glitch = noone;	
	}else{
		if(glitch.spriteToGlitch != sprite_index || sprite_index == noone){
			with(glitch){
				instance_destroy();
			}
			glitch = noone;
		}
	}
}