///scr_btnGoUpdateText()
///update text;
active = scr_btnGoActiveStatus();

if(active == false){
	text = "Waiting";	
	alarm[0] = -1;
	decompte = false;
}
else if (active == true){
	if(alarm[0] == -1 && decompte == false && text != "GO !"){///alarm is doing decompte;
		text = "3";
		decompte = true;
		alarm[0] = decompteSpeed;
	}
}