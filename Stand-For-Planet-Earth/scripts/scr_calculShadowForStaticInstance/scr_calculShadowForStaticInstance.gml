///@description scr_calculShadowForStaticInstance(searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var searchingInstancePrec = argument[0];
var searchingPointPrec = argument[1];

for(var j = 0;j<ds_list_size(staticObjectMakingShadowList);j++)
{
	var objectMakingShadow = ds_list_find_value(staticObjectMakingShadowList,j)
	
	for(var i=0;i<=359/searchingInstancePrec;i++)
	{
		var angleChecked = i*searchingInstancePrec;
		var instance = collision_line_first(x,y,x+lengthdir_x(radius,angleChecked),y+lengthdir_y(radius,angleChecked),objectMakingShadow,true,true);

		if(instance)
		{
			var instanceNumberInArray = scr_getStaticInstanceNumberInArray(instance);
			if(instanceNumberInArray!=noone)
			{
				if (collision_line_first(x,y,x+lengthdir_x(radius,angleChecked-searchingInstancePrec),y+lengthdir_y(radius,angleChecked-searchingInstancePrec),objectMakingShadow,true,true)!= instance)
				{
					var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",angleChecked,searchingPointPrec,objectMakingShadow,instance,true);

					x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,objectMakingShadow,true,true);
			
					staticInstanceDetected[instanceNumberInArray,2]= ds_list_find_value(x1y1Coordinates,1);
					staticInstanceDetected[instanceNumberInArray,1]= ds_list_find_value(x1y1Coordinates,0);
				}
				if (collision_line_first(x,y,x+lengthdir_x(radius,angleChecked+searchingInstancePrec),y+lengthdir_y(radius,angleChecked+searchingInstancePrec),objectMakingShadow,true,true)!= instance)
				{
					var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",angleChecked,searchingPointPrec,objectMakingShadow,instance,true);
					
					x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,objectMakingShadow,true,true);
				
					staticInstanceDetected[instanceNumberInArray,6]= instance.y;
					staticInstanceDetected[instanceNumberInArray,5]= instance.x;
					staticInstanceDetected[instanceNumberInArray,4]= ds_list_find_value(x2y2Coordinates,1);
					staticInstanceDetected[instanceNumberInArray,3]= ds_list_find_value(x2y2Coordinates,0);
				}
			}
		}
	}
}
//DEBUG
/*for(var i = 0; i<array_height_2d(staticInstanceDetected);i++)
{
	show_message(string(i)+"  "+string(staticInstanceDetected[i,0])+"  "+string(staticInstanceDetectedtected+"  "+string(staticInstanceDetectedanceDetectedstring(staticInstanceDetectedtstaticInstanceDetestaticInstanceDetectedanceDetected[iinstanceDetected
}*/