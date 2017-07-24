///@description scr_getStaticInstanceNumberInArray(instance);
var instance = argument0;

var instanceNumberInArray = noone;

for(var ii =0; ii<array_height_2d(staticInstanceDetected); ii++)
{
	if(staticInstanceDetected[ii,0] == instance)
	{
		instanceNumberInArray = ii;
		break;
	}
} 
if(instanceNumberInArray == noone)
{
	instanceNumberInArray = array_height_2d(staticInstanceDetected)
	staticInstanceDetected[instanceNumberInArray,0] = instance;
}
return instanceNumberInArray;