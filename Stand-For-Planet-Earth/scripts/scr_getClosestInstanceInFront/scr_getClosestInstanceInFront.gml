///scr_getClosestInstanceInFront(object);

var obj = argument[0]

var instanceInFrontOfMe = ds_list_create();
var xBase = x;
var yBase = y;
var longueur = 1000;
var largeur = 100;
var prec = 10;
var angleEnlargeFactor = 5;

for(var i =-largeur/2; i<=largeur/2;i+=prec){
	xBase = x+lengthdir_x(abs(i),image_angle+sign(i)*90);
	yBase = y+lengthdir_y(abs(i),image_angle+sign(i)*90);
	var instance = collision_line_first(xBase,yBase,xBase+lengthdir_x(longueur,image_angle+i/angleEnlargeFactor),yBase+lengthdir_y(longueur,image_angle+i/angleEnlargeFactor),obj,true,true);
	if(instance!=noone && ds_list_find_index(instanceInFrontOfMe,instance) ==-1){
		ds_list_add(instanceInFrontOfMe,instance)
	}
}
	
var closestTarget = noone;
var distance = 0;

for(var i=0; i<ds_list_size(instanceInFrontOfMe); i++){
	var tempDistance = distance_to_point(ds_list_find_value(instanceInFrontOfMe,i).x,ds_list_find_value(instanceInFrontOfMe,i).y)
	if(tempDistance>distance){
		distance = tempDistance;
		closestTarget = ds_list_find_value(instanceInFrontOfMe,i);
	}
}
ds_list_destroy(instanceInFrontOfMe);
return closestTarget;


