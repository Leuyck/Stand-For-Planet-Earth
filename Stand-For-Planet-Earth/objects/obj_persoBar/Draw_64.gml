/// @description 

///draw cadre
var boxScale = 0.4*scale
draw_sprite_ext(spr_fond_healthBar,-1,xpos,ypos,boxScale,boxScale,0,c_white,1);
if(sprite !=noone) then draw_sprite_ext(asset_get_index(sprite),-1,xpos,ypos,boxScale,boxScale,0,c_white,1);
draw_sprite_ext(spr_cadre_healthBar,-1,xpos,ypos,boxScale,boxScale,0,c_white,1);


scr_drawOtherBar(obj_PetBot, spr_healthBar_redCross);