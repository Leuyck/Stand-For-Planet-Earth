///string_extract_X(value);
/// format : "X;Y";

var delimiterPosition = string_pos(";", argument0);
if(delimiterPosition == -1) {
	return 0;
}
var stringX = string_copy(argument0, 0, delimiterPosition - 1);
return real(stringX);