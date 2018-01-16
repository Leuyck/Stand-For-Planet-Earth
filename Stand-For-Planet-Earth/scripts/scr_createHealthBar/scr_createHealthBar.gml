///scr_createHealthBar()
var playerNumber = argument[0];

var marginLeft = 50;
var marginBetween2Bars = 50;
var healthBarHeight = 15
var healthBarWidth = 200
//var xpos = marginLeft + (playerNumber - 1) * (healthBarWidth + 2 * marginBetween2Bars);
//var ypos = display_get_gui_height()-50;

return instance_create_depth(0, 0,-10000, obj_persoBar);

