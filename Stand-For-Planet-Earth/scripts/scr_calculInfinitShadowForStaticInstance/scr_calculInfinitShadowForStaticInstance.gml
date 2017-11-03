///scr_calculInfinitShadowForStaticInstance(searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et update un tableau des coordonnée des mur et autre qui doivent faire des ombres infinies
var searchingInstancePrec = argument[0];
var searchingPointPrec = argument[1];

for(var j = 0;j<ds_list_size(staticObjectMakingInfinitShadowList);j++)
{
	var objectMakingShadow = ds_list_find_value(staticObjectMakingInfinitShadowList,j)
	
	for(var i=0;i<=(360-searchingInstancePrec)/searchingInstancePrec;i++)
	{
		var angleChecked = i*searchingInstancePrec;
		var instance = collision_line_first(x,y,x+lengthdir_x(radius,angleChecked),y+lengthdir_y(radius,angleChecked),objectMakingShadow,true,true);

		if(instance)
		{
			var instanceNumberInArray = scr_getStaticInstanceNumberInArray(instance);

			if (collision_line_first(x,y,x+lengthdir_x(radius,angleChecked-searchingInstancePrec),y+lengthdir_y(radius,angleChecked-searchingInstancePrec),objectMakingShadow,true,true)!= instance)
			{
				var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,objectMakingShadow,instance,true);
				var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,objectMakingShadow,true,true);
					
				var x1y1DecaledCoordinates = scr_decalCollisionCoordinates(x1y1Coordinates,instanceLowestPointAngle-searchingPointPrec*6);
					
				staticInstanceDetected[instanceNumberInArray,2]=ds_list_find_value(x1y1DecaledCoordinates,1);
				staticInstanceDetected[instanceNumberInArray,1]=ds_list_find_value(x1y1DecaledCoordinates,0);
				
				ds_list_destroy(x1y1Coordinates);
				ds_list_destroy(x1y1DecaledCoordinates);
			}

			if (collision_line_first(x,y,x+lengthdir_x(radius,angleChecked+searchingInstancePrec),y+lengthdir_y(radius,angleChecked+searchingInstancePrec),objectMakingShadow,true,true)!= instance)
			{
				var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,objectMakingShadow,instance,true);
					
				var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,objectMakingShadow,true,true);
					
				var x2y2DecaledCoordinates = scr_decalCollisionCoordinates(x2y2Coordinates,instanceHighestPointAngle+searchingPointPrec*6);
				
				staticInstanceDetected[instanceNumberInArray,6]= instance.y;
				staticInstanceDetected[instanceNumberInArray,5]= instance.x;
				staticInstanceDetected[instanceNumberInArray,4]=ds_list_find_value(x2y2DecaledCoordinates,1);
				staticInstanceDetected[instanceNumberInArray,3]=ds_list_find_value(x2y2DecaledCoordinates,0);
				
				ds_list_destroy(x2y2Coordinates);
				ds_list_destroy(x2y2DecaledCoordinates);
			}
		}
	}
}