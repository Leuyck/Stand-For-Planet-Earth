/// @description 
if(room == rm_score){
	draw_set_color(c_white);
	draw_set_font(fnt_2_XXL);
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_center);
	
	draw_text(room_width/2,room_height/6,"Score" );
	
	draw_set_halign(fa_left);
	scoreY = room_height/3
	var margin = 85;
	draw_text(room_width/5,scoreY,"Percent of civil killed : "+string(percentOfCivilKilled)+"%" );
	scoreY+=margin
	draw_text(room_width/5,scoreY,"Percent of soldier killed : "+string(percentOfSoldierKilled)+"%" );
	scoreY+=margin
	draw_text(room_width/5,scoreY,"Total damage taken : "+string(totalDamageTaken));
	scoreY+=margin
	draw_text(room_width/5,scoreY,"Total heal point : "+string(totalHeal));
	scoreY+=margin
	draw_text(room_width/5,scoreY,"Total ammo used : "+string(totalAmmoUsed));
	scoreY+=margin
	draw_text(room_width/5,scoreY,"Total energy used : "+string(totalUsedEnergy));	
	scoreY+=margin
	draw_text(room_width/5,scoreY,"Global note : "+string(42));
	scoreY+=margin;
	
	if(!instance_exists(obj_btn_exit)){
		var instance = instance_create_depth(room_width/2,scoreY,depth,obj_btn_exit);
		instance.appear = true;
		instance.colonne = 1;
		instance.position = 1;
	}
	with(obj_controller_parent){
		buttonSelected = obj_btn_exit.id;
		colonnePosition = 1;
		buttonPosition = 1;
	}
}