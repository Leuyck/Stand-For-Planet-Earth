var value = argument[0];
var search = argument[1];

if(string_length(value) < string_length(search)) {
	return false;	
}

var begining = string_copy(value, 0, string_length(search));

return begining == search;