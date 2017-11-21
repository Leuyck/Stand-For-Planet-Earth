///scr_btnGoUpdateText()
///update text;
if(active == false){
	text = "Waiting";	
	alarm[0] = -1;
	decompte = false;
}
if (active == true && alarm[0] == -1 && decompte == false && text != "GO !"){///alarm is doing decompte;
	text = "3";
	decompte = true;
	alarm[0] = decompteSpeed;
}