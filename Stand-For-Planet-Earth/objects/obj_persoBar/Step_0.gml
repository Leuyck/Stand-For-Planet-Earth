/// @description 
scale = (2 * display_get_gui_width())/1920;

///Set the sprite for cadre
scr_setHealthBarCadre();

if(hero != noone && xpos ==0 && ypos ==0){
	var boxWidth = sprite_get_width(asset_get_index(sprite))*0.4*scale
	var marginLeft = 10*scale;
	var marginBetween2Bars = display_get_gui_width()/16;
	var healthBarWidth = display_get_gui_width()/8;	
	xpos = marginLeft + boxWidth/2 + (hero.playerNumber - 1) * (healthBarWidth + 2 * marginBetween2Bars);
	ypos = display_get_gui_height() - marginLeft - boxWidth/2;
	x=xpos
	y=ypos
	
	///create healthBar;
	if(healthBarCreated == false){
		var healthBar = instance_create_depth(0,0,depth,obj_healthBar);
		healthBar.xpos = xpos+boxWidth/2 + 2.5*scale;
		healthBar.ypos = ypos+boxWidth/2 - 2.5*scale;
		healthBar.hero = hero;
		healthBar.scale = scale;

		healthBarCreated = true;
	}
	///create energyBar
	if(energyBarCreated == false){
		for(var i =0; i<12;i++){
			var energyBar = instance_create_depth(x,y,depth,obj_energyBar);
			energyBar.energyBarId = i+1;
			energyBar.xpos = xpos+boxWidth/2 + 2.5*scale + i*(sprite_get_width(spr_healthBar_energyContour)*scale+2.5*scale);
			energyBar.ypos = ypos+boxWidth/2 - 2.5*scale -sprite_get_height(spr_healthBar_healthContour)*scale - 2.5*scale;
			energyBar.hero = hero;
			energyBar.scale = scale;
		}
		energyBarCreated = true;
	}
}
if(hero !=noone){
		scr_otherBarImageIndex();
}