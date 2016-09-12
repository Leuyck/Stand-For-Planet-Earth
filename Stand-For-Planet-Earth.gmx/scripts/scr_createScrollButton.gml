
var playerNumber = argument[0];

var marginTop = 30;
var marginBetween2Buttons = 10;
var buttonHeight = sprite_get_height(spr_btn_scrollHero);
var buttonWidth = sprite_get_width(spr_btn_scrollHero);
var xpos = 512; // todo : display_get_width() / 2 - buttonWidth / 2;
var ypos = marginTop + buttonHeight / 2 + (playerNumber - 1) * (buttonHeight + 2 * marginBetween2Buttons);

return instance_create(xpos, ypos, obj_btn_scrollHero);
