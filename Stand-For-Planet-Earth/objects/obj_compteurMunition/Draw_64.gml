/// @description 

draw_set_halign(fa_right);
draw_set_font(fnt_2);
draw_set_color(c_white);

draw_text(healthBar.x+130, healthBar.y+50,string(currentMunition)+"/"+string(maxMunition))