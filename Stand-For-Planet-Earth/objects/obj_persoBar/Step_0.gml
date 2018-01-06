/// @description 

///Set the sprite for cadre
scr_setHealthBarCadre();

if(hero != noone && xpos ==0 && ypos ==0){
	var marginLeft = 50;
	var marginBetween2Bars = 50;
	var healthBarWidth = 200
	xpos = marginLeft + (hero.playerNumber - 1) * (healthBarWidth + 2 * marginBetween2Bars);
	ypos = display_get_gui_height()-50;	
	
	///create healthBar;
	if(healthBarCreated == false){
		var healthBar = instance_create_depth(0,0,depth,obj_healthBar);
		healthBar.xpos = xpos+40;
		healthBar.ypos = ypos+37;
		healthBar.hero = hero;

		healthBarCreated = true;
	}
	///create energyBar
	if(energyBarCreated == false){
		for(var i =0; i<12;i++){
			var energyBar = instance_create_depth(x,y,depth,obj_energyBar);
			energyBar.energyBarId = i+1;
			energyBar.xpos = xpos+40+i*(sprite_get_width(spr_healthBar_energyContour)+5);
			energyBar.ypos = ypos+17
			energyBar.hero = hero;
		}
		energyBarCreated = true;
	}
}
if(hero !=noone){
		scr_otherBarImageIndex();
}