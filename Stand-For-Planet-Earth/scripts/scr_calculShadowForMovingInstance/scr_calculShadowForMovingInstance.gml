///@description scr_calculShadowForMovingInstance(radius,objectMakingShadow, searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var radius = argument[0];
var objectMakingShadoww = argument[1];
var searchingInstancePrec = argument[2];
var searchingPointPrec = argument[3];

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
				var instanceNumberInArray = noone;
		
				for(var ii =0; ii<array_height_2d(movingInstanceDetected); ii++)
				{
					if(movingInstanceDetected[ii,0] == instance)
					{
						instanceNumberInArray = ii;
					}
				}
				if(instanceNumberInArray == noone)
				{
					instanceNumberInArray = array_height_2d(movingInstanceDetected)
					movingInstanceDetected[instanceNumberInArray,0] = instance;
				}
				if(instanceNumberInArray!=noone)
				{
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
					x1y1Coordinates = scr_collisionCoordinateFinder(x,y,realInstanceLowestPointAngle,radius,objectMakingShadow,false,true);
					var y1 = ds_list_find_value(x1y1Coordinates,1);
					var x1 = ds_list_find_value(x1y1Coordinates,0);
					movingInstanceDetected[instanceNumberInArray,2]= ds_list_find_value(x1y1Coordinates,1);
					movingInstanceDetected[instanceNumberInArray,1]= ds_list_find_value(x1y1Coordinates,0);
				

					var finderAngle = angleChecked;
		
					while (collision_line_first(x,y,x+lengthdir_x(radius,finderAngle+searchingPointPrec),y+lengthdir_y(radius,finderAngle+searchingPointPrec),objectMakingShadow,false,true)==instance) 
					{
					    finderAngle+=searchingPointPrec;
						if(finderAngle ==360) then finderAngle = 0
					}
					var instanceHighestPointAngle = finderAngle;
					x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,objectMakingShadow,false,true);
						
					var y2 = ds_list_find_value(x2y2Coordinates,1);
					var x2 = ds_list_find_value(x2y2Coordinates,0);
					
					for(var j=0; j<ds_list_size(staticObjectMakingShadowList);j++)
					{
						var staticObjectMakingShadow = ds_list_find_value(staticObjectMakingShadowList,j);
						while (collision_line_first(x,y,x+lengthdir_x(point_distance(x,y,x2,y2),finderAngle-searchingPointPrec),y+lengthdir_y(point_distance(x,y,x2,y2),finderAngle-searchingPointPrec),staticObjectMakingShadow,true,true)!=noone && abs(angle_difference(angleChecked,finderAngle)) <=abs(angle_difference(angleChecked,instanceHighestPointAngle)))
						{
							finderAngle-=searchingPointPrec;
							if(finderAngle ==-1) then finderAngle = 359
						}
						
					}
					if(finderAngle < angleChecked-abs(angle_difference(angleChecked,instanceHighestPointAngle))||finderAngle>angleChecked+abs(angle_difference(angleChecked,instanceHighestPointAngle)))
					{
						finderAngle = noone;
					}
					var realInstanceHighestPointAngle = finderAngle;	
					x2y2Coordinates = scr_collisionCoordinateFinder(x,y,realInstanceHighestPointAngle,radius,objectMakingShadow,false,true);
					var y2 = ds_list_find_value(x2y2Coordinates,1);
					var x2 = ds_list_find_value(x2y2Coordinates,0);
					movingInstanceDetected[instanceNumberInArray,6]= y+lengthdir_y(point_distance(x,y,instance.x,instance.y),
																	point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
					movingInstanceDetected[instanceNumberInArray,5]= x+lengthdir_x(point_distance(x,y,instance.x,instance.y),
																	point_direction(x,y,x1,y1)+ abs(angle_difference(point_direction(x,y,x1,y1),point_direction(x,y,x2,y2))/2));
					movingInstanceDetected[instanceNumberInArray,4]= ds_list_find_value(x2y2Coordinates,1);
					movingInstanceDetected[instanceNumberInArray,3]= ds_list_find_value(x2y2Coordinates,0);
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