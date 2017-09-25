///@description scr_addVariableInto2dArray(array,values,...);
///add all the values of the array in argument[0];
///@arg array  the array to work with;
///@arg value  the values to add to the array;

var r = argument[0];
var positionInArray = array_height_2d(r);
var o = array_length_2d(r,positionInArray) - 1;
var i = argument_count;
while (--i > 0) {
	r[@ positionInArray,o + i] = argument[i];
}
return r;