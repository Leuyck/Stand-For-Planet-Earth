/// @description 
draw_self();
draw_set_color(c_white);

///draw the rectangles
var widness = 5
var boxWidth = 400;
var boxHeight = 490;
var box1X = x-sprite_width/2-boxWidth
var box2X = x+sprite_width/2
var boxY = y-220
for(var i = 0; i<widness;i++){
	draw_rectangle(box1X-i,boxY-i,box1X+boxWidth+i,boxY+boxHeight+i,true)
	draw_rectangle(box2X-i,boxY-i,box2X+boxWidth+i,boxY+boxHeight+i,true)
}
draw_set_font(fnt_2_large);
draw_set_halign(fa_left);

///draw the left text;
var textX = box1X + 30
var textY = boxY + 50
var yIncrement = 100;
draw_text(textX,textY, "Left Joystick : " +textLJ);
textY+=yIncrement;
draw_text(textX,textY, "Right Joystick : " +textRJ);
textY+=yIncrement;
draw_text(textX,textY, "Start : Pause Menu");

//draw right text;
var textX = box2X + 30
var textY = boxY + 50
var yIncrement = 65;
draw_text(textX,textY, "A : " +textA);
textY+=yIncrement;
draw_text(textX,textY, "B : " +textB);
textY+=yIncrement;
draw_text(textX,textY, "X : " +textXButton);
textY+=yIncrement;
draw_text(textX,textY, "RT / RB : " +textRt);
textY+=yIncrement;
draw_text(textX,textY, "LT / LB : " +textLt);
textY+=yIncrement;
draw_text(textX,textY, "Push Right Joy : " +textRJPush);