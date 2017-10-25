///scr_dialog_1(char1,char2)
var stringChar1 = string_delete(object_get_name(argument[0]),1,4)
var stringChar2 = string_delete(object_get_name(argument[1]),1,4)
var dialogue = ds_list_create();

var text1 = stringChar1 + " : " + "Bienvenu dans SFPE Bienvenu dans SFPE Bienvenu dans SFPE  Bienvenu dans SFPE Bienvenu dans SFPE"
var text2 = stringChar2 + " : " +"Merci, je suis ravi d'être ici";

ds_list_add(dialogue, text1);
ds_list_add(dialogue, text2);

return dialogue;