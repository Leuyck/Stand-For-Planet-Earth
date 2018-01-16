
if(hero != noone && xpos!=0 && ypos !=0){
	if(overchargedBar == true && hero.currentMaxEnergy>=energyBarId){
		draw_sprite_ext(spr_healthBar_energyContour,-1,xpos,ypos,scale,scale,0,c_white,1);
	}else if (overchargedBar == false){
		draw_sprite_ext(spr_healthBar_energyContour,-1,xpos,ypos,scale,scale,0,c_white,1);
	}
	if(full){
		if(overchargedBar){
			draw_sprite_ext(spr_healthBar_energy,1,xpos,ypos,scale,scale,0,c_white,1);
		}else{
			draw_sprite_ext(spr_healthBar_energy,0,xpos,ypos,scale,scale,0,c_white,1);
		}
	}
}
