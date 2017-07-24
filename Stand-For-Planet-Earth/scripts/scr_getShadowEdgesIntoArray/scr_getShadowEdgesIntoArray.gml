///@Description scr_getShadowEdgesIntoArray(x1,y1,x2,y2,lightX,lightY,arrayName)

var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var lightX = argument[4];
var lightY = argument[5];
var array = argument[6];

if( !scr_signTest( x1,y1, x2,y1, lightX,lightY))
{
    var arraySize = array_height_2d(array);
        
    array[arraySize,3] = y1;
    array[arraySize,2] = x2;
    array[arraySize,1] = y1;
    array[arraySize,0] = x1;
}
if( !scr_signTest( x2,y1, x2,y2, lightX,lightY))
{
    var arraySize = array_height_2d(array);
        
    array[arraySize,3] = y2;
    array[arraySize,2] = x2;
    array[arraySize,1] = y1;
    array[arraySize,0] = x2;
}
if( !scr_signTest( x2,y2, x1,y2, lightX,lightY))
{
    var arraySize = array_height_2d(array);
        
    array[arraySize,3] = y2;
    array[arraySize,2] = x1;
    array[arraySize,1] = y2;
    array[arraySize,0] = x2;
}
if( !scr_signTest( x1,y2, x1,y1, lightX,lightY))
{
    var arraySize = array_height_2d(array);
        
    array[arraySize,3] = y1;
    array[arraySize,2] = x1;
    array[arraySize,1] = y2;
    array[arraySize,0] = x1;          
} 

return array
