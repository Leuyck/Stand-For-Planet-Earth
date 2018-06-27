/// @description 
var sat = clamp(((hero.maxHealth-hero.currentHealth)*255)/(hero.maxHealth-1),0,255);
var color = make_color_hsv(0,sat,255);
if(hero.currentHealth <=0) then color = make_color_hsv(0,0,64);
image_blend = color;
if(sprite_index !=noone) then draw_self()