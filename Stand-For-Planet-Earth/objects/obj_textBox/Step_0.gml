/// @description 

//calcul the height of textbox
draw_set_font(fnt_chat);
if(height == 0){
	for(var i=0;i<ds_list_size(text);i++){
		if(string_height_ext(ds_list_find_value(text,i),-1,width-2*padding)>height){
			height = string_height_ext(ds_list_find_value(text,i),-1,width-2*padding)+2*padding;
		}
	}
}