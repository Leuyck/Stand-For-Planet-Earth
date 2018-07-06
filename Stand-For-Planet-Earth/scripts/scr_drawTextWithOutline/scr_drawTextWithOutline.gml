///scr_drawTextWithOutline(xText,yText,text,color,outlineColor,outlineWidth,halign,scale,rot,alpha,manualSurfaceWidth);
var xText = argument[0];
var yText = argument[1];
var text = argument[2]
var color = argument[3]
var outlineColor = argument[4]
var outlineWidth = argument[5]
var halign = argument[6]
var scale = argument[7];
var rotation = argument[8];
var alpha = argument[9]
var manualSurfaceWidth = argument[10]

if(manualSurfaceWidth != 0){
	var surfWidth = manualSurfaceWidth+2*outlineWidth;	
}else{
	var surfWidth = string_width(text)+2*outlineWidth;
}
var surfHeight = string_height(text)+2*outlineWidth;
var surf =surface_create(surfWidth,surfHeight);
surface_set_target(surf);
draw_clear_alpha(0,0)

var drawCoordX = surfWidth/2;
var drawCoordY = surfHeight/2;

if(halign == fa_left){
	drawCoordX = outlineWidth;
}else if(halign == fa_right){
	drawCoordX = surfWidth-outlineWidth;	
}
draw_set_halign(halign);
draw_set_valign(fa_middle);

for(var i = -outlineWidth;i<=outlineWidth;i+=outlineWidth){
	draw_text_color(drawCoordX+i,drawCoordY+i,text,outlineColor,outlineColor,outlineColor,outlineColor,1)
	draw_text_color(drawCoordX+i,drawCoordY-i,text,outlineColor,outlineColor,outlineColor,outlineColor,1)
}
draw_text_color(drawCoordX,drawCoordY,text,color,color,color,color,1)

surface_reset_target()
draw_surface_ext(surf,xText,yText,scale,scale,rotation,color,alpha)
surface_free(surf);