///@description scr_getMovingInstanceNumberInArray(instance);
var instance = argument0;

var instanceNumberInArray = noone;

for(var ii =0; ii<array_height_2d(movingInstanceDetected); ii++)
{
	if(movingInstanceDetected[ii,0] == instance)
	{
		instanceNumberInArray = ii;
		break;
	}
} 
if(instanceNumberInArray == noone)
{
	instanceNumberInArray = array_height_2d(movingInstanceDetected)
	movingInstanceDetected[instanceNumberInArray,0] = instance;
}
return instanceNumberInArray;
