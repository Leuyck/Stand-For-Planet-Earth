/// @description 
image_alpha = alpha;
draw_self();

draw_sprite_ext(spr_textBox,-1,x-sprite_get_width(spr_textBox),y-sprite_get_height(spr_textBox),2,2,0,-1,alpha)

if(count<string_length(text)){
	count++
	str = string_copy(text,0,count);
}

draw_set_halign(fa_left)
draw_text_ext_color(x-270,y,str,-1,-1,-1,-1,-1,-1,alpha)