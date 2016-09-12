///scr_createHealthBar()
var playerNumber = argument[0];

var marginLeft = 50;
var marginBetween2Bars = 50;
var healthBarHeight = 15
var healthBarWidth = 200
var xpos = marginLeft + (playerNumber - 1) * (healthBarWidth + 2 * marginBetween2Bars);
var ypos = 700

return instance_create(xpos, ypos, obj_healthBar);

