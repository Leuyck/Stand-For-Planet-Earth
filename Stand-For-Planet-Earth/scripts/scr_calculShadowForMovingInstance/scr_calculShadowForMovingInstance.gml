///@description scr_calculShadowForMovingInstance(radius,objectMakingShadow, searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var radius = argument[0];
var searchingInstancePrec = argument[1];
var searchingPointPrec = argument[2];

for(var i =0; i<ds_list_size(movingObjectMakingShadowList);i++)
{
	var objectMakingShadow = ds_list_find_value(movingObjectMakingShadowList,i);
	with(objectMakingShadow)
	{
		if(distance_to_point(other.x,other.y)<radius && collision_point(other.x,other.y,objectMakingShadow,false,false)==noone)
		{
			var angleChecked = point_direction(other.x,other.y,self.x,self.y);
			var instance = self.id;
		
			with(other)
			{
				var instanceNumberInArray = scr_getMovingInstanceNumberInArray(instance);
				
				if(instanceNumberInArray!=noone)
				{
					
					var realInstanceLowestPointAngle = scr_findRealInstanceLowestPointAngle(angleChecked,searchingPointPrec,objectMakingShadow,instance);
					var realInstanceHighestPointAngle = scr_findRealInstanceHighestPointAngle(angleChecked,searchingPointPrec,objectMakingShadow,instance);
					x1y1Coordinates = scr_collisionCoordinateFinder(x,y,realInstanceLowestPointAngle,radius,objectMakingShadow,false,true);
					var y1 = ds_list_find_value(x1y1Coordinates,1);
					var x1 = ds_list_find_value(x1y1Coordinates,0);
					movingInstanceDetected[instanceNumberInArray,2]= y1;
					movingInstanceDetected[instanceNumberInArray,1]= x1;
					
					x2y2Coordinates = scr_collisionCoordinateFinder(x,y,realInstanceHighestPointAngle,radius,objectMakingShadow,false,true);
					var y2 = ds_list_find_value(x2y2Coordinates,1);
					var x2 = ds_list_find_value(x2y2Coordinates,0);
					movingInstanceDetected[instanceNumberInArray,6]= y+lengthdir_y(point_distance(x,y,instance.x,instance.y),
																	point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
					movingInstanceDetected[instanceNumberInArray,5]= x+lengthdir_x(point_distance(x,y,instance.x,instance.y),
																	point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
					movingInstanceDetected[instanceNumberInArray,4]= y2;
					movingInstanceDetected[instanceNumberInArray,3]= x2;
				}
			}
		}
		else
		{
			var instance = self.id;
		
			with(other)
			{		
				for(var ii =0; ii<array_height_2d(movingInstanceDetected); ii++)
				{
					if(movingInstanceDetected[ii,0] == instance)
					{
						movingInstanceDetected[ii,1] = noone;
						movingInstanceDetected[ii,2] = noone;
						movingInstanceDetected[ii,3] = noone;
						movingInstanceDetected[ii,4] = noone;
						movingInstanceDetected[ii,5] = noone;
						movingInstanceDetected[ii,6] = noone;	
						break;				
					}
				}
			
			}
		}
	}
}
//DEBUG
/*for(var i = 0; i<array_height_2d(movingInstanceDetected);i++)
{
	show_message(string(i)+"  "+string(movingInstanceDetected[i,0])+"  "+string(movingInstanceDetected[i,1]));
}
//return movingInstanceDetected;