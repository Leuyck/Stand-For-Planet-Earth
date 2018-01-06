
if(hero != noone && xpos!=0 && ypos !=0){
	if(overchargedBar == true && hero.currentMaxEnergy>=energyBarId){
		draw_sprite(spr_healthBar_energyContour,-1,xpos,ypos);
	}else if (overchargedBar == false){
		draw_sprite(spr_healthBar_energyContour,-1,xpos,ypos);
	}
	if(full){
		if(overchargedBar){
			draw_sprite(spr_healthBar_energy,1,xpos,ypos);
		}else{
			draw_sprite(spr_healthBar_energy,0,xpos,ypos);
		}
	}
}
