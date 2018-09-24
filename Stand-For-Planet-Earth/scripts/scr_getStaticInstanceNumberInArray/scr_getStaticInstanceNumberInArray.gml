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
	staticInstanceDetected[instanceNumberInArray,1] = noone;
	staticInstanceDetected[instanceNumberInArray,2] = noone;
	staticInstanceDetected[instanceNumberInArray,3] = noone;
	staticInstanceDetected[instanceNumberInArray,4] = noone;
	staticInstanceDetected[instanceNumberInArray,5] = noone;
	staticInstanceDetected[instanceNumberInArray,6] = noone;
}
return instanceNumberInArray;