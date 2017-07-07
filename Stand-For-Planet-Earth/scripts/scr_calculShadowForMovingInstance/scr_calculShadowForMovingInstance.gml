///@description scr_calculShadowForMovingInstance(searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var searchingInstancePrec = argument[0];
var searchingPointPrec = argument[1];

for(var i =0; i<ds_list_size(movingObjectMakingShadowList);i++)
{
	var objectMakingShadow = ds_list_find_value(movingObjectMakingShadowList,i);
	with(objectMakingShadow)
	{
		if(distance_to_point(other.x,other.y)<other.radius && distance_to_point(other.x,other.y)>0)
		{
			var angleChecked = point_direction(other.x,other.y,self.x,self.y);
			var instance = self.id;
		
			with(other)
			{
				var instanceNumberInArray = scr_getMovingInstanceNumberInArray(instance);
				
				if(instanceNumberInArray!=noone)
				{
					var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,objectMakingShadow,instance);
					var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,objectMakingShadow,instance);
					x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,objectMakingShadow,false,true);
					x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,objectMakingShadow,false,true);
					var y1 = ds_list_find_value(x1y1Coordinates,1);
					var x1 = ds_list_find_value(x1y1Coordinates,0);
					var y2 = ds_list_find_value(x2y2Coordinates,1);
					var x2 = ds_list_find_value(x2y2Coordinates,0);
					movingInstanceDetected[instanceNumberInArray,6]= y+lengthdir_y(point_distance(x,y,instance.x,instance.y),
																	point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
					movingInstanceDetected[instanceNumberInArray,5]= x+lengthdir_x(point_distance(x,y,instance.x,instance.y),
																	point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
					movingInstanceDetected[instanceNumberInArray,4]= y2;
					movingInstanceDetected[instanceNumberInArray,3]= x2;
					movingInstanceDetected[instanceNumberInArray,2]= y1;
					movingInstanceDetected[instanceNumberInArray,1]= x1;
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