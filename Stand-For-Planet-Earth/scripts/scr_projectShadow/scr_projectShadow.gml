/// @description cast a shadow of this line segment from the point light
/// @param VB Vertex buffer
/// @param Ax  x1
/// @param Ay  y1
/// @param Bx  x2
/// @param By  y2
/// @param Cx  centerOfSpriteX
/// @param Cy  centerOfSpriteY
/// @param Lx  Light x
/// @param Ly  Light Y
/// @param objectUnderLight  true or false; (object touch the roof or not)
/// @param size    size of object under light(in init decor

var _vb = argument0;
var _Ax = argument1;
var _Ay = argument2;
var _Bx = argument3;
var _By = argument4;
var _Cx = argument5;
var _Cy = argument6;
var _Lx = argument7;
var _Ly = argument8;
var objectUnderLight = argument9;
var size = argument10;

// shadows are infinite - almost, just enough to go off screen

var distanceLightObject = point_distance(_Lx,_Ly,_Cx,_Cy);
var Adx,Ady,Bdx,Bdy,Cdx,Cdy,len
var heightOfLight = 3;

if(objectUnderLight == false && size !=noone) then objectUnderLight = true;

if(objectUnderLight == true)
{
	var heightOfObject
	if(size != noone){
		heightOfObject = size;
	}else{
		heightOfObject = 2;
	}
	
	var val = ((distanceLightObject/radius)*65+190+sign(lightIntensity-0.7)*(255*(0.7-lightIntensity)));
				//factor distance//190 = min val//sign(lightIntensity-0.7) = signe de la soustraction pour ajouter ou soustraire
				//le calcul d'apres à 190 si jamais lightIntensity > 0.7;
				//255*(0.7-lightIntensity) correspond au calcul de réduction de la lumiere quand l'intensité change;
	var col = make_color_hsv(color_get_hue(image_blend),color_get_saturation(image_blend),val);
}
else
{
	var heightOfObject = 10000;
	var col =c_black;
}
var shadowFactor = heightOfObject/heightOfLight * distanceLightObject*(lightIntensity/0.7);
																		//^- correspond au facteur d'agrandissement de l'ombre en fonction intensité

// get unit length to point 2 (center of sprite)
Cdx = _Cx-_Lx;      
Cdy = _Cy-_Ly;      
len = shadowFactor / sqrt( (Cdx*Cdx)+(Cdy*Cdy) );
Cdx = _Cx + Cdx * len;
Cdy = _Cy + Cdy * len;

var lCd = point_distance(_Lx,_Ly,Cdx,Cdy);
Adx = _Lx+lengthdir_x(lCd,point_direction(_Lx,_Ly,_Ax,_Ay));
Ady = _Ly+lengthdir_y(lCd,point_direction(_Lx,_Ly,_Ax,_Ay));

Bdx = _Lx+lengthdir_x(lCd,point_direction(_Lx,_Ly,_Bx,_By));
Bdy = _Ly+lengthdir_y(lCd,point_direction(_Lx,_Ly,_Bx,_By));

// now build a quad
vertex_position(_vb, _Ax,_Ay);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, _Cx,_Cy);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, Adx,Ady);
vertex_colour(_vb,col,1);

vertex_position(_vb, _Cx,_Cy);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, Adx,Ady);
vertex_colour(_vb,col,1);
vertex_position(_vb, Cdx,Cdy);
vertex_colour(_vb,col,1);

vertex_position(_vb, _Cx,_Cy);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, _Bx,_By);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, Cdx,Cdy);
vertex_colour(_vb,col,1);

vertex_position(_vb, _Bx,_By);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, Cdx,Cdy);
vertex_colour(_vb,col,1);
vertex_position(_vb, Bdx,Bdy);
vertex_colour(_vb,col,1);