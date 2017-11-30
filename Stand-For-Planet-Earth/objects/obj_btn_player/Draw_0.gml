/// @description 
draw_sprite(spr_selectionFond,-1,x,y);

draw_set_font(fnt_2_large);
draw_set_color(c_white)

if(!enable){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x,y,"Press A/ENTER");
	draw_self();
}else{
	var sprite = "spr_selection" + string_copy(object_get_name(heroSelected),5,string_length(object_get_name(heroSelected)));
	
	if(sprite == "spr_selectionEngiBot" || sprite == "spr_selectionPetBot"){
		draw_sprite(asset_get_index(sprite),-1,x,y);
	}else{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x,y,"No Pictures yet");
	}
	draw_self();
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text(x-sprite_width/2+30,y+sprite_height/2-15,string_copy(object_get_name(heroSelected),5,string_length(object_get_name(heroSelected))));
}

