///@description scr_findRealInstanceLowestPointAngle(angleCheck, searchingPointPrec,objectMakingShadow,instance);
var angleChecked = argument0;
var searchingPointPrec = argument1;
var objectMakingShadow = argument2;
var instance = argument3;
var radius = rad;

var finderAngle = angleChecked;			
		
while (collision_line_first(x,y,x+lengthdir_x(radius,finderAngle-searchingPointPrec),y+lengthdir_y(radius,finderAngle-searchingPointPrec),objectMakingShadow,false,true)==instance)
{
	finderAngle-=searchingPointPrec;
	if(finderAngle ==-1) then finderAngle = 359
}
var instanceLowestPointAngle = finderAngle;
x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,objectMakingShadow,false,true);
			
var y1 = ds_list_find_value(x1y1Coordinates,1);
var x1 = ds_list_find_value(x1y1Coordinates,0);

for(var j=0; j<ds_list_size(staticObjectMakingShadowList);j++)
{
	var staticObjectMakingShadow = ds_list_find_value(staticObjectMakingShadowList,j);
	while (collision_line_first(x,y,x+lengthdir_x(point_distance(x,y,x1,y1),finderAngle+searchingPointPrec),y+lengthdir_y(point_distance(x,y,x1,y1),finderAngle+searchingPointPrec),staticObjectMakingShadow,true,true)!=noone && abs(angle_difference(angleChecked,finderAngle))<=abs(angle_difference(angleChecked,instanceLowestPointAngle)))
	{
		finderAngle+=searchingPointPrec;
		if(finderAngle ==360) then finderAngle = 0
	}						
}
if(finderAngle >angleChecked+abs(angle_difference(angleChecked,instanceLowestPointAngle)) || finderAngle <angleChecked-abs(angle_difference(angleChecked,instanceLowestPointAngle)))
{
	finderAngle = noone;
}
var realInstanceLowestPointAngle = finderAngle;	

return realInstanceLowestPointAngle;