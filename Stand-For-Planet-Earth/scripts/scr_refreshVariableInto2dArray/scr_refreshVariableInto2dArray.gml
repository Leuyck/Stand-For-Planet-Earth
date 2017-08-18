///@description scr_refreshVariableInto2dArray(array,index,value,...)
///refresh all the values of the array in argument[0] at the index argument[1];
///@arg array  the array to work with;
///@arg index  the index of the line of the array to refresh;
///@arg value... the values to add to the array;
var r = argument[0];
var positionInArray = argument[1];
var o = -2;
var i = argument_count;
while (--i > 1) {
	r[@ positionInArray,o + i] = argument[i];
}
return r;