/// @description 
if(sprite_index !=noone) {
	if(hero.currentHealth <=0){ 
		image_blend = make_color_hsv(0,0,64);
		draw_self();
	}else{
		draw_self();
		image_blend=c_white;
		var top = (sprite_height/global.displayRatio)-(hero.maxHealth-hero.currentHealth)*((sprite_height/global.displayRatio)/hero.maxHealth);
		draw_sprite_part_ext(sprite_index, -1, 0, top, sprite_width/global.displayRatio, sprite_height/global.displayRatio, x-sprite_xoffset, y-sprite_yoffset+top*global.displayRatio, global.displayRatio, global.displayRatio, c_red, 0.8);
	}
}
