///Draw the HealthBar

// draw healthBar
var xpos1 = x;
var xpos2 = xpos1 + healthBarWidth;
var ypos1 = y;
var ypos2 = ypos1 + healthBarHeight;

draw_healthbar(xpos1, ypos1, xpos2, ypos2, healthPosition, c_black, c_red, c_lime, 0, false, false);
draw_rectangle_colour(xpos1 , ypos1,  xpos2, ypos2, c_black ,c_black, c_black , c_black, true);

// draw energyBar
var xpos3 = x
var xpos4 = x + energyBarWidth
var ypos3 = ypos2 + 5;
var ypos4 = ypos2 + energyBarHeight;

for(var i=0 ; i < ds_list_size(self.energyBars) ; i++)
{
    var currentEnergy = ds_list_find_value(self.energyBars, i);
    draw_healthbar(xpos3, ypos3 + i * energyBarHeight, xpos4, ypos4 + i * energyBarHeight, currentEnergy, c_black, energyBarColour, energyBarColour, 0, false, false);
    draw_rectangle_colour(xpos3 , ypos3 + i * energyBarHeight,  xpos4, ypos4 + i * energyBarHeight, c_black ,c_black, c_black , c_black, true);
}

//draw otherBar
scr_drawOtherBar(obj_PetBot, spr_healthBar_redCross);

///draw cadre
draw_sprite(spr_fond_healthBar,-1,x,y);
var sprite = "spr_cadre_" + string_copy(object_get_name(hero.object_index),5,string_length(object_get_name(hero.object_index)));
if(sprite == "spr_cadre_BatBot"|| sprite == "spr_cadre_EngiBot" || sprite == "spr_cadre_BadaBot" || sprite == "spr_cadre_PetBot"){
	draw_sprite(asset_get_index(sprite),-1,x,y);
}
draw_sprite(spr_cadre_healthBar,-1,x,y);
