///@description scr_calculShadow(radius,objectMakingShadow, searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var radius = argument[0];
var objectMakingShadow = argument[1];
var searchingInstancePrec = argument[2];
var searchingPointPrec = argument[3];

instanceDetected=noone;

for(var i=0;i<=359/searchingInstancePrec;i++)
{
var angleChecked = i*searchingInstancePrec
var instance = collision_line(x,y,x+lengthdir_x(radius,angleChecked),y+lengthdir_y(radius,angleChecked),objectMakingShadow,true,true);

	if(instance)
	{
		var instanceNumberInArray = noone;
		
		for(var ii =0; ii<array_height_2d(instanceDetected); ii++)
		{
			if(instanceDetected[ii,0] == instance)
			{
				instanceNumberInArray = ii;
			}
		}
		if(instanceNumberInArray == noone)
		{
			instanceNumberInArray = array_height_2d(instanceDetected)
			instanceDetected[instanceNumberInArray,0] = instance;
		}
		if(instanceNumberInArray!=noone)
		{
			if (collision_line(x,y,x+lengthdir_x(radius,angleChecked-searchingInstancePrec),y+lengthdir_y(radius,angleChecked-searchingInstancePrec),objectMakingShadow,true,true)!=instance)
			{
				var finderAngle = angleChecked;
		
				while (collision_line(x,y,x+lengthdir_x(radius,finderAngle-searchingPointPrec),y+lengthdir_y(radius,finderAngle-searchingPointPrec),objectMakingShadow,true,true)==instance)
				{
		            finderAngle-=searchingPointPrec;
					if(finderAngle ==-1) then finderAngle = 359
		        }
		        var instanceCollideAngle = finderAngle;
				x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceCollideAngle,radius,objectMakingShadow,true,true);
			
				instanceDetected[instanceNumberInArray,2]= ds_list_find_value(x1y1Coordinates,1);
				instanceDetected[instanceNumberInArray,1]= ds_list_find_value(x1y1Coordinates,0);
			}
			if (collision_line(x,y,x+lengthdir_x(radius,angleChecked+searchingInstancePrec),y+lengthdir_y(radius,angleChecked+searchingInstancePrec),objectMakingShadow,true,true)!=instance)
			{
				var finderAngle = angleChecked;
		
				while (collision_line(x,y,x+lengthdir_x(radius,finderAngle+searchingPointPrec),y+lengthdir_y(radius,finderAngle+searchingPointPrec),objectMakingShadow,true,true)==instance) 
				{
		            finderAngle+=searchingPointPrec;
					if(finderAngle ==360) then finderAngle = 0
		        }
		        var instanceCollideAngle = finderAngle;
				x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceCollideAngle,radius,objectMakingShadow,true,true);
				
				instanceDetected[instanceNumberInArray,6]= instance.y;
				instanceDetected[instanceNumberInArray,5]= instance.x;
				instanceDetected[instanceNumberInArray,4]= ds_list_find_value(x2y2Coordinates,1);
				instanceDetected[instanceNumberInArray,3]= ds_list_find_value(x2y2Coordinates,0);
			}
		}
	}
}
//DEBUG
/*for(var i = 0; i<array_height_2d(instanceDetected);i++)
{
	show_message(string(i)+"  "+string(instanceDetected[i,0])+"  "+string(instanceDetected[i,1])+"  "+string(instanceDetected[i,2])+"  "+string(instanceDetected[i,3])+"  "+string(instanceDetected[i,4]))
}*/
return instanceDetected;