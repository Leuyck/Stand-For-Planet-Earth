///scr_getNameOfChar(char)
//return a string;
var char= argument[0]

if(!is_string(char)){
	if(string_count("obj_",object_get_name(char))>0){
		return string_delete(object_get_name(char),1,4)
	}else{
		return string(char);	
	}
}
return char;