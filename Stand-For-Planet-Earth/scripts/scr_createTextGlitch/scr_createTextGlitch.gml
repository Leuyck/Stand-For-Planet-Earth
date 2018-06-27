///scr_createTextGlitch(xCord,yCord, text,font,color,angle, textoutline,outlineSize,outlineColor,parent)
var xCord = argument[0];
var yCord = argument[1];
var text = argument[2];
var font = argument[3];
var color = argument[4];
var angle = argument[5];
var textOutline = argument[6];
var outlineSize = argument[7];
var outlineColor = argument[8];
var parent = argument[9];


var textGlitch = instance_create_depth(xCord,yCord,depth-10000,obj_text_glitch)
textGlitch.text = text;
textGlitch.font = font;
textGlitch.color = color;
textGlitch.angle = angle;
textGlitch.outline = textOutline;
textGlitch.outlineSize = outlineSize;
textGlitch.outlineColor = outlineColor;
textGlitch.parent = parent