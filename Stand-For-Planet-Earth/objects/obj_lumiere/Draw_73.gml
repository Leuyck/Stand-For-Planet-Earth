/// @description Insert description here
// You can write your code in this editor
/*DEBUG
var color = make_colour_hsv((id-100000)*75, 255, 255)
draw_set_color(color)
draw_circle(lx,ly,10,true);

var hue = 0;

for(var i = 0; i<array_height_2d(staticInstanceDetected);i++)
{
	hue+=25;
	var color = make_colour_hsv(hue,255,255);
	draw_set_color(color);
	draw_line(lx,ly,staticInstanceDetected[i,1],staticInstanceDetected[i,2]);
	draw_line(lx,ly,staticInstanceDetected[i,3],staticInstanceDetected[i,4]);
	draw_text(staticInstanceDetected[i,5],staticInstanceDetected[i,6],string(i)+"   "+string(staticInstanceDetected[i,0])+"  "+string(staticInstanceDetected[i,1])+"  "+string(staticInstanceDetected[i,3]))
	draw_circle(lx,ly,radius,true);
	
	draw_circle(staticInstanceDetected[i,5],staticInstanceDetected[i,6],5,false);
}