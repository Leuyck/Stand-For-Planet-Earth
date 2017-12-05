/// @description 
var color = c_white;
if(selected && obj_btn_go.lockedRoom ==roomName) then color = c_red;
else if(selected) then color = c_yellow;


draw_sprite_ext(sprite_index,0,x,y,1,1,0,color,alpha)

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_2_large);
draw_set_color(color)
draw_text_color(x,y+sprite_height/2+10,roomName,color,color,color,color,alpha);