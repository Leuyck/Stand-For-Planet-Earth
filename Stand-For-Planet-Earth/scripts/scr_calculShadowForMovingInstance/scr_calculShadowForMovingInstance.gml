///@description scr_calculShadowForMovingInstance(searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var distanceEntre2PointPrecis = argument[0];
var searchingPointPrec = (360*distanceEntre2PointPrecis)/(2*pi*radius+distanceEntre2PointPrecis);

for(var i =0; i<ds_list_size(movingObjectMakingShadowList);i++){
	var objectMakingShadow = ds_list_find_value(movingObjectMakingShadowList,i);
	with(objectMakingShadow){
		var instance = self.id;
		if(distance_to_point(other.x,other.y)<other.radius && distance_to_point(other.x,other.y)>0 && scr_isInView(50)){
			var angleChecked = point_direction(other.x,other.y,self.x,self.y);
			with(other){
				scr_addInstanceIntoMapAndListForLight(instance,movingInstanceDetected,movingInstanceDetectedList);
	
				var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,objectMakingShadow,instance,true);
				var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,objectMakingShadow,instance,true);
				var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,objectMakingShadow,instance,true,true);
				var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,objectMakingShadow,instance,true,true);
				var y1 = ds_list_find_value(x1y1Coordinates,1);
				var x1 = ds_list_find_value(x1y1Coordinates,0);
				var y2 = ds_list_find_value(x2y2Coordinates,1);
				var x2 = ds_list_find_value(x2y2Coordinates,0);
				var xx = x+lengthdir_x(point_distance(x,y,instance.x,instance.y),point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
				var yy = y+lengthdir_y(point_distance(x,y,instance.x,instance.y),point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
					
				ds_map_replace(movingInstanceDetected[? instance],"x1",x1);
				ds_map_replace(movingInstanceDetected[? instance],"y1",y1);
				ds_map_replace(movingInstanceDetected[? instance],"x2",x2);
				ds_map_replace(movingInstanceDetected[? instance],"y2",y2);
				ds_map_replace(movingInstanceDetected[? instance],"xx",xx);
				ds_map_replace(movingInstanceDetected[? instance],"yy",yy);					
					
				ds_list_destroy(x1y1Coordinates);
				ds_list_destroy(x2y2Coordinates);
			}
		}else{
			with(other){		
				ds_map_delete(movingInstanceDetected,instance);
				ds_list_delete(movingInstanceDetectedList,instance);			
			}
		}
	}
}
///calcul for staticInstanceMakingMovingShadowList
for (var i = 0; i < ds_list_size(staticInstanceMakingMovingShadowList); ++i) {
    var instance = ds_list_find_value(staticInstanceMakingMovingShadowList,i);
	var angleChecked = point_direction(x,y,instance.x,instance.y);
	scr_addInstanceIntoMapAndListForLight(instance,movingInstanceDetected,movingInstanceDetectedList);
	
	var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,obj_door_parent,instance,true)+1;
	var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,obj_door_parent,instance,true)-1;
	var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,obj_door_parent,instance,true,true);
	var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,obj_door_parent,instance,true,true);
	x1y1Coordinates = scr_decalCollisionCoordinates(x1y1Coordinates,instanceLowestPointAngle-1);
	x2y2Coordinates = scr_decalCollisionCoordinates(x2y2Coordinates,instanceHighestPointAngle+1);
		
	var y1 = ds_list_find_value(x1y1Coordinates,1);
	var x1 = ds_list_find_value(x1y1Coordinates,0);
	var y2 = ds_list_find_value(x2y2Coordinates,1);
	var x2 = ds_list_find_value(x2y2Coordinates,0);
	ds_map_replace(movingInstanceDetected[? instance],"x1",x1);
	ds_map_replace(movingInstanceDetected[? instance],"y1",y1);
	ds_map_replace(movingInstanceDetected[? instance],"x2",x2);
	ds_map_replace(movingInstanceDetected[? instance],"y2",y2);
	ds_map_replace(movingInstanceDetected[? instance],"xx",instance.x);
	ds_map_replace(movingInstanceDetected[? instance],"yy",instance.y);	
					
	ds_list_destroy(x1y1Coordinates);
	ds_list_destroy(x2y2Coordinates);
	
}
//DEBUG
//for(var i = 0; i<array_height_2d(movingInstanceDetected);i++)
//{
//	show_message(string(i)+"  "+string(movingInstanceDetected[i,0])+"  "+string(movingInstanceDetected[i,1]));
//}
//return movingInstanceDetected;