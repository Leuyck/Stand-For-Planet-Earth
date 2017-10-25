/// @description 

//draw rectangle
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(x,y,x+width,y+height,false)

//calcul the str so it can apear letter after letter
var textToWrite = ds_list_find_value(text,textToReadFrom);	

if(count<string_length(textToWrite)){
	count++
	str = string_copy(textToWrite,0,count);
}else if(alarm[0]==-1){
	alarm[0] = firstTextDuration;
}

//draw text
draw_set_alpha(1);
draw_set_font(fnt_chat);
draw_set_valign(fa_top)
draw_set_colour(c_white);
draw_text_ext(x+padding,y+padding,str,-1,width-2*padding)
