///scr_dialog_1(char1,char2)

var char1 = argument[0];
var char2 = argument[1];

var dialogue = ds_list_create();

var text1 = "Bienvenu dans SFPE Bienvenu dans SFPE Bienvenu dans SFPE  Bienvenu dans SFPE Bienvenu dans SFPE"
var text2 = "Merci, je suis ravi d'être ici";

ds_list_add(dialogue, string(char1)+" : "+text1);
ds_list_add(dialogue, string(char2)+" : "+text2);


return dialogue;