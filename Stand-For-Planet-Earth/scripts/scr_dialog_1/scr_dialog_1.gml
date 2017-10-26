///scr_dialog_1(char1,char2)

var char1 = scr_getNameOfChar(argument[0]);
var char2 = scr_getNameOfChar(argument[1]);

var text1 = char1 + " : " + "Bienvenu dans SFPE Bienvenu dans SFPE Bienvenu dans SFPE  Bienvenu dans SFPE Bienvenu dans SFPE"
var text2 = char2 + " : " +"Merci, je suis ravi d'être ici";

var dialogue = ds_list_create();
ds_list_add(dialogue, text1);
ds_list_add(dialogue, text2);

return dialogue;