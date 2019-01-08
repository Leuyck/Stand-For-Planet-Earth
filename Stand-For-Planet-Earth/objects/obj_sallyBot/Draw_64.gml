/// @description 
if(drawHealthBar){
	var horizontalDecal = 200*global.displayRatio;
	draw_healthbar(horizontalDecal,100*global.displayRatio,(display_get_gui_width()-horizontalDecal),130*global.displayRatio,(currentHealth/maxHealth)*100,c_black,c_red,c_red,0,false,false);
	draw_rectangle_color(horizontalDecal,100*global.displayRatio,(display_get_gui_width()-horizontalDecal),130*global.displayRatio,c_black,c_black,c_black,c_black, true);
}