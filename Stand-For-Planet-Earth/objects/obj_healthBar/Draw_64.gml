///Draw the HealthBar


if(xpos !=0 && ypos != 0)

// draw healthBar

for(var i =0; i<hero.maxHealth;i++){
	draw_sprite(spr_healthBar_healthContour,-1,xpos+i*(sprite_get_width(spr_healthBar_healthContour)+2),ypos);
}
for(var i = 0; i<hero.currentHealth;i++){
	draw_sprite(spr_healthBar_health,-1,xpos+i*(sprite_get_width(spr_healthBar_health)+2),ypos);
}

//for(var i =0; i<hero.currentMaxEnergy;i++){
//	draw_sprite(spr_healthBar_energyContour,-1,xpos,ypos2-i*(sprite_get_height(spr_healthBar_energyContour)+5));
//}
//for(var i =0; i<hero.currentEnergy;i++){
//	var imageIndex = 0;
//	if(i>=hero.maxEnergy) then imageIndex =1;
//	draw_sprite(spr_healthBar_energy,imageIndex,xpos,ypos2-i*(sprite_get_height(spr_healthBar_energy)+5));
//}

//draw otherBar



