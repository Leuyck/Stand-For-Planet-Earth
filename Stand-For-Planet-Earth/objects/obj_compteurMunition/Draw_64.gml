/// @description 

draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(fnt_2_large);
var draw_color = color
if(draw_color == mainColor){
	draw_color = c_white;
}
scr_drawTextWithOutline(healthBar.x+150,healthBar.y+50,string(currentMunition)+"/"+string(maxMunition),draw_color,c_black,1,fa_right,1,0,1);