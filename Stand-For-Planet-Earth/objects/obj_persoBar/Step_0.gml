/// @description 
scale = (2 * display_get_gui_width())/1920;

///Set the sprite for cadre
scr_setHealthBarCadre();

if(hero != noone && xpos ==0 && ypos ==0){
	var boxWidth = sprite_get_width(asset_get_index(sprite))*0.4*scale
	var marginLeft = 30*scale;
	var marginBetween2Bars = display_get_gui_width()/16;
	var healthBarWidth = display_get_gui_width()/8;	
	xpos = marginLeft + boxWidth/2 + (hero.playerNumber - 1) * (healthBarWidth + 2 * marginBetween2Bars);
	ypos = display_get_gui_height() - marginLeft/2 - boxWidth/2;
	x=xpos
	y=ypos
	
	///create healthBar;
	if(healthBarCreated == false){
		var healthBar = instance_create_depth(xpos,ypos,depth,obj_healthBar);
		healthBar.hero = hero;
		healthBar.scale = scale;
		healthBarCreated = true;
	}
}
if(hero !=noone){
		scr_otherBarImageIndex();
}