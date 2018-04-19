///scr_createHealthBar()
var playerNumber = argument[0];
var margin = 30  + sprite_get_xoffset(spr_healthBar);
var marginBetween2Bars = (display_get_gui_width()-2*margin)/3
var xpos = margin + (playerNumber - 1) * marginBetween2Bars;
var ypos = display_get_gui_height()- 90;

return instance_create_depth(xpos, ypos,-10000, obj_healthBar);