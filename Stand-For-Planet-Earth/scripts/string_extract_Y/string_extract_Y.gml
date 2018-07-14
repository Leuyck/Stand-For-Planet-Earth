///string_extract_Y(value);
/// format : "X;Y";

var delimiterPosition = string_pos(";", argument0);
if(delimiterPosition == -1) {
	return 0;
}
var stringY = string_copy(argument0, delimiterPosition + 1, string_length(argument0) - delimiterPosition);
return real(stringY);