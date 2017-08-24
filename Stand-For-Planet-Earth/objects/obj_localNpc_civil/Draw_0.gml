/// @description Insert description here
// You can write your code in this editor
event_inherited();
draw_set_font(fnt_chat);
draw_text(x+25,y,string(fear)+" "+behaviour+" "+state);
if(fear==true && fearObject !=noone){
draw_text(x+25,y+10, string(object_get_name(fearObject.object_index)));
}