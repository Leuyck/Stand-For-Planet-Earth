///scr_calculInfinitShadowForStaticInstance(searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et update un tableau des coordonnée des mur et autre qui doivent faire des ombres infinies
var distanceEntre2Points = argument[0];
var distanceEntre2PointPrecis = argument[1];
var searchingPointPrec = (360*distanceEntre2PointPrecis)/(2*pi*radius+distanceEntre2PointPrecis);

var precise = false;
for(var j = 0;j<ds_list_size(staticObjectMakingInfinitShadowList);j++)
{
	var objectMakingShadow = ds_list_find_value(staticObjectMakingInfinitShadowList,j)
	var searchingInstancePrec = (360*distanceEntre2Points)/(2*pi*radius+distanceEntre2Points);
	for(var i=0;i<=(360/searchingInstancePrec);i++){	

		var angleChecked = i*searchingInstancePrec;
		var instance = collision_line_first(x,y,x+lengthdir_x(radius,angleChecked),y+lengthdir_y(radius,angleChecked),objectMakingShadow,precise,true);

		if(instance){
			scr_addInstanceIntoMapAndListForLight(instance,staticInstanceDetected,staticInstanceDetectedList);
			
			var angleOfCollision = angleChecked;
			if(ds_map_find_value(staticInstanceDetected[? instance], "x1") ==noone){
				while( collision_line_first(x,y,x+lengthdir_x(radius,angleOfCollision-searchingInstancePrec),y+lengthdir_y(radius,angleOfCollision-searchingInstancePrec),objectMakingShadow,precise,true)== instance){
					angleOfCollision-=searchingInstancePrec;	
					if(angleOfCollision<0) then angleOfCollision +=360;
				}
				var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleOfCollision,searchingPointPrec,objectMakingShadow,instance,precise)+1;
				var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,objectMakingShadow,instance,precise,true);
				x1y1Coordinates = scr_decalCollisionCoordinates(x1y1Coordinates,instanceLowestPointAngle-1);
					
				ds_map_replace(staticInstanceDetected[? instance],"y1",ds_list_find_value(x1y1Coordinates,1));
				ds_map_replace(staticInstanceDetected[? instance],"x1",ds_list_find_value(x1y1Coordinates,0));
				
				ds_list_destroy(x1y1Coordinates);
			}
			var angleOfCollision = angleChecked;
			if(ds_map_find_value(staticInstanceDetected[? instance], "x2") ==noone){
				while (collision_line_first(x,y,x+lengthdir_x(radius,angleOfCollision+searchingInstancePrec),y+lengthdir_y(radius,angleOfCollision+searchingInstancePrec),objectMakingShadow,precise,true)== instance){
					angleOfCollision += searchingInstancePrec;	
					if(angleOfCollision>=360) then angleOfCollision -=360;
				}
				var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleOfCollision,searchingPointPrec,objectMakingShadow,instance,precise)-1;
				var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,objectMakingShadow,instance,precise,true);
				x2y2Coordinates = scr_decalCollisionCoordinates(x2y2Coordinates,instanceHighestPointAngle+1);
				
				ds_map_replace(staticInstanceDetected[? instance],"yy",instance.y);
				ds_map_replace(staticInstanceDetected[? instance],"xx",instance.x);
				ds_map_replace(staticInstanceDetected[? instance],"y2",ds_list_find_value(x2y2Coordinates,1));
				ds_map_replace(staticInstanceDetected[? instance],"x2",ds_list_find_value(x2y2Coordinates,0));
				
				ds_list_destroy(x2y2Coordinates);
			}
		}
	}
}