/// @description 

var textToWrite = ds_list_find_value(text,textAlreadyPlayed);	


draw_set_font(fnt_chat);
draw_set_valign(fa_top)
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(x,y,x+width+padding,y+height+padding,false)
draw_set_alpha(1);

draw_set_colour(c_white);

if(count<string_width_ext(textToWrite,-1,width)){
	str = string_copy(textToWrite,0,count);
	count++
	show_debug_message(string(count));
}else if(alarm[0]==-1){
	alarm[0] =firstTextDuration;
}

draw_text_ext(x+padding,y+padding,str,-1,width)
