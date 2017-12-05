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
	
	if(sprite == "spr_selectionRoomCreator"){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(x,y,"RoomCreator");
	}else{
		draw_sprite(asset_get_index(sprite),imageIndex,x,y);
	}
	draw_self();
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text(x-sprite_width/2+30,y+sprite_height/2-15,string_copy(object_get_name(heroSelected),5,string_length(object_get_name(heroSelected))));
}

if(heroLock){
	draw_sprite_ext(spr_selectionSelected,-1,x,y,1,1,0,c_white,0.5);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if(imageIndex == 1){
		draw_text_ext_transformed_color(x+5,y-50,"READY !",0,4000,3,3,45,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,0.5);
		draw_text_ext_transformed_color(x,y-55,"READY !",0,4000,3,3,45,c_aqua,c_aqua,c_aqua,c_aqua,0.5);
	}else{
		draw_text_ext_transformed_color(x-5,y-50,"READY !",0,4000,3,3,45,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);	
	}
	draw_text_ext_transformed_color(x,y-50,"READY !",0,4000,3,3,45,c_yellow,c_yellow,c_yellow,c_yellow,0.8);
}