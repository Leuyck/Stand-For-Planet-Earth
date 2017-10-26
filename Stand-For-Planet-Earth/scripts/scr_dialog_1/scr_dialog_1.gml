///scr_dialog_1(char1,char2)
var char1 = argument[0]
var char2 = argument[1]
var stringChar1=char1;
var stringChar2=char2;

if(!is_string(char1)){
	if(string_count("obj_",object_get_name(char1))>0){
		stringChar1 = string_delete(object_get_name(char1),1,4)
	}else{
		stringChar1 = string(char1);	
	}
}
if(!is_string(char2)){
	if(string_count("obj_",object_get_name(char2))>0){
		stringChar2 = string_delete(object_get_name(char2),1,4)
	}else{
		stringChar2 = string(char2);	
	}
}
var dialogue = ds_list_create();

var text1 = stringChar1 + " : " + "Bienvenu dans SFPE Bienvenu dans SFPE Bienvenu dans SFPE  Bienvenu dans SFPE Bienvenu dans SFPE"
var text2 = stringChar2 + " : " +"Merci, je suis ravi d'être ici";

ds_list_add(dialogue, text1);
ds_list_add(dialogue, text2);

return dialogue;