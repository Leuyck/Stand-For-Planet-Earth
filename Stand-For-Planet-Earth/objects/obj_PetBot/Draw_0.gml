/// @description 

// Inherit the parent event
event_inherited();

/*var xBase = x;
var yBase = y;
var longueur = 1000;
var largeur = 100;
var prec = 10;
var angleEnlargeFactor = 5;

for(var i=-largeur/2; i<=largeur/2;i+=prec){
	xBase = x+lengthdir_x(abs(i),image_angle+sign(i)*90);
	yBase = y+lengthdir_y(abs(i),image_angle+sign(i)*90);
	draw_line(xBase,yBase,xBase+lengthdir_x(longueur,image_angle+i/angleEnlargeFactor),yBase+lengthdir_y(longueur,image_angle+i/angleEnlargeFactor));
}