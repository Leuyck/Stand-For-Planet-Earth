/// @description 
depth = -10000;
width = 300; //of the box
height = 0;	 //of the box
padding = 12;  //margin between box and text (often x2 when you draw because of each side)

str = "";
count = 0;
textToReadFrom = 0;

text = scr_dialog_1(obj_PetBot,"elvis");

firstTextDuration = 2*room_speed;

alarm[0]=-1;