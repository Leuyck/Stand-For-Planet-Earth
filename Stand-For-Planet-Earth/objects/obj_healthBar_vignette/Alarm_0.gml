/// @description textGlitch refresh

if(hero.currentHealth <=0){
	if(textGlitch != noone){
		with(textGlitch){
			instance_destroy();	
		}
	}
	textGlitch = scr_createTextGlitchGUI(x,y, deathText,fnt_2,c_white,0,false,0,0,self.id);
}

alarm[0] = irandom_range(15,2*room_speed) 