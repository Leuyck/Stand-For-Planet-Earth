///scr_drawTextWithOutline(xText,yText,text,color,outlineColor,outlineWidth,alpha);
var xText = argument[0];
var yText = argument[1];
var text = argument[2]
var color = argument[3]
var outlineColor = argument[4]
var outlineWidth = argument[5]
var alpha = argument[6]

var surfWidth = string_width(text)+2*outlineWidth;
var surfHeight = string_height(text)+2*outlineWidth;
var surf =surface_create(surfWidth,surfHeight);
surface_set_target(surf);
draw_clear_alpha(0,0)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(var i = -outlineWidth;i<=outlineWidth;i+=outlineWidth){
	draw_text_color(surfWidth/2+i,surfHeight/2+i,text,outlineColor,outlineColor,outlineColor,outlineColor,1)
	draw_text_color(surfWidth/2+i,surfHeight/2-i,text,outlineColor,outlineColor,outlineColor,outlineColor,1)
}
draw_text_color(surfWidth/2,surfHeight/2,text,color,color,color,color,1)

surface_reset_target()
draw_surface_ext(surf,xText,yText,1,1,0,c_white,alpha)
surface_free(surf);