///scr_getLaserCoordinatesList()
///return a list of real
var msg = argument[0];
var splitBy = ","; //string to split the first string by
var coordinates = ds_list_create();
var str2 = ""; //var to hold the current split we're working on building
for (var i = 1; i < (string_length(msg)+1); i++) {
	var currStr = string_copy(msg, i, 1);
	if (currStr == splitBy) {
	    ds_list_add(coordinates,real(str2)); //add this split to the array of all splits
	    str2 = "";
	} else {
	    str2 = str2 + currStr;
	}
	if(i==string_length(msg)){
		ds_list_add(coordinates,real(str2));	
	}
}
return coordinates;