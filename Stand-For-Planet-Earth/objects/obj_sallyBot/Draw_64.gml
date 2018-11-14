/// @description 
if(drawHealthBar){
	draw_healthbar(200/global.displayRatio,100/global.displayRatio,(display_get_gui_width()-200)/global.displayRatio,130/global.displayRatio,(currentHealth/maxHealth)*100,c_black,c_red,c_red,0,false,false);
	draw_rectangle_color(200/global.displayRatio,100/global.displayRatio,(display_get_gui_width()-200)/global.displayRatio,130/global.displayRatio,c_black,c_black,c_black,c_black, true);
}