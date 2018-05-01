/// @description 
var alpha = 1;
if(!selected){
	alpha = 0.2
}
if(buttonNumberInMenu == 0){
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,alpha)	
}else{
	if(firstGlitch == noone){
		if(alarm[0] == -1){
			alarm[0] = buttonNumberInMenu * spawnDelay;
		}else if(alarm[0] == 0){
			scr_createGlitch(self.id,obj_glitch);	
			firstGlitch = glitch;
		}
	}else{
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,alpha)	
	}
}

