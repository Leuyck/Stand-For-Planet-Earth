/// @description Decompte alarm
if(text =="Waiting"){
	text = "3";
	alarm[0]=decompteSpeed;
}else if (text == "3"){
	text ="2";
	alarm[0]=decompteSpeed;
}else if (text == "2"){
	text ="1";
	alarm[0]=decompteSpeed;
}else if (text == "1"){
	text ="GO !";
	decompte = false;
}
