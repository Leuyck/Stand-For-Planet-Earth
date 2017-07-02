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

// shadows are infinite - almost, just enough to go off screen

var distanceLightObject = point_distance(_Lx,_Ly,_Cx,_Cy);
var Adx,Ady,Bdx,Bdy,Cdx,Cdy,len
var heightOfLight = 3

if(objectUnderLight == true)
{
	var heightOfObject = 2;
	var val = (distanceLightObject/rad)*65+190;
	var col = make_color_hsv(color_get_hue(image_blend),color_get_saturation(image_blend),val);
}
else
{
	var heightOfObject = 10000;
	var col = c_black;
}
var shadowFactor = heightOfObject/heightOfLight;


// get unit length to point 2 (center of sprite)
Cdx = _Cx-_Lx;      
Cdy = _Cy-_Ly;      
len = (shadowFactor*distanceLightObject) / sqrt( (Cdx*Cdx)+(Cdy*Cdy) );    // unit length scaler * Shadow length
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
//vertex_argb(_vb, $ffCCCCCC);
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