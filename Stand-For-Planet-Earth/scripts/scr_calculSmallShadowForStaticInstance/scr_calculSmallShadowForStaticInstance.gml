///scr_calculSmallShadowForStaticInstance(searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et update un tableau des coordonnée des mobilier qui doivent faire des ombres finies
var searchingInstancePrec = argument[0];//useless
var distanceEntre2PointPrecis = argument[1];
var searchingPointPrec = (360*distanceEntre2PointPrecis)/(2*pi*radius+distanceEntre2PointPrecis);

var mobilierList = ds_list_create();
///find mobilier who need to generate shadow.
for(var j = 0;j<ds_list_size(staticObjectMakingSmallShadowList);j++){
	with(ds_list_find_value(staticObjectMakingSmallShadowList,j))
	{
		if(distance_to_point(other.x,other.y)<other.radius && collision_line(self.x,self.y,other.x,other.y,obj_mur_parent,false,true) ==noone)
		{
			ds_list_add(mobilierList,self.id)
		}
	}
}

///calcul x1 y1 et x2 y2 du mobilier pour générer l'ombre
for(var j = 0;j<ds_list_size(mobilierList);j++)
{
	var instance = ds_list_find_value(mobilierList,j)
	
	var angleChecked = point_direction(x,y,instance.x,instance.y);
	var instanceNumberInArray = scr_getStaticInstanceNumberInArray(instance);
	
	for(var k=angleChecked;k>=0-searchingInstancePrec;k-=searchingInstancePrec)
	{
		if (collision_line(x,y,x+lengthdir_x(radius,k-searchingInstancePrec),y+lengthdir_y(radius,k-searchingInstancePrec),instance,true,true)== noone)
		{
			var instanceLowestPointAngle = scr_getInstanceCollideAngle("down",k,searchingPointPrec,instance,instance,true);
			var x1y1Coordinates = scr_collisionCoordinateFinder(x,y,instanceLowestPointAngle,radius,instance,instance,true,true);
			var x1y1DecaledCoordinates = scr_decalCollisionCoordinates(x1y1Coordinates,instanceLowestPointAngle-searchingPointPrec*6);
			staticInstanceDetected[instanceNumberInArray,2]=ds_list_find_value(x1y1DecaledCoordinates,1);
			staticInstanceDetected[instanceNumberInArray,1]=ds_list_find_value(x1y1DecaledCoordinates,0);
			ds_list_destroy(x1y1Coordinates);
			ds_list_destroy(x1y1DecaledCoordinates);
			break;
		}else if(k <=0){
			k=360;
		}
	}
	for(var k=angleChecked;k<=360+searchingInstancePrec;k+=searchingInstancePrec)
	{
		if (collision_line(x,y,x+lengthdir_x(radius,k+searchingInstancePrec),y+lengthdir_y(radius,k+searchingInstancePrec),instance,true,true)== noone)
		{
			var instanceHighestPointAngle = scr_getInstanceCollideAngle("up",k,searchingPointPrec,instance,instance,true);
					
			var x2y2Coordinates = scr_collisionCoordinateFinder(x,y,instanceHighestPointAngle,radius,instance,instance,true,true);
					
			var x2y2DecaledCoordinates = scr_decalCollisionCoordinates(x2y2Coordinates,instanceHighestPointAngle+searchingPointPrec*6);
				
			staticInstanceDetected[instanceNumberInArray,6]= instance.y;
			staticInstanceDetected[instanceNumberInArray,5]= instance.x;
			staticInstanceDetected[instanceNumberInArray,4]=ds_list_find_value(x2y2DecaledCoordinates,1);
			staticInstanceDetected[instanceNumberInArray,3]=ds_list_find_value(x2y2DecaledCoordinates,0);
			ds_list_destroy(x2y2Coordinates);
			ds_list_destroy(x2y2DecaledCoordinates);
			break;
		}else if(k >= 350){
			k=0-searchingInstancePrec;
		}
	}
}
ds_list_destroy(mobilierList)