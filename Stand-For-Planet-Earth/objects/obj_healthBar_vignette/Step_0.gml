/// @description 

///Set the sprite for cadre
scr_setVignetteSprite();

image_xscale = global.displayRatio;
image_yscale = global.displayRatio;


if(glitch != noone){
	if(!instance_exists(glitch)){
		glitch = noone;	
	}
}

if(hero.currentHealth <=0 && alarm[0] = -1){
	alarm[0] = 1* room_speed      //create the textGlitch
}else if(hero.currentHealth >0){
	alarm[0] = -1;	
	if(textGlitch != noone){
		with(textGlitch){
			instance_destroy();	
		}
	}
	textGlitch = noone;
}