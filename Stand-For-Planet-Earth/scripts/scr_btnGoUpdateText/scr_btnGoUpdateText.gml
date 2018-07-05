///scr_btnGoUpdateText()
///update text;
active = scr_btnGoActiveStatus();

if(active == false){
	text = "Waiting";	
	alarm[1] = -1;
	decompte = false;
}else if (active == true){
	if(alarm[1] == -1 && decompte == false && text != "GO !"){///alarm is doing decompte;
		text = "3";
		decompte = true;
		alarm[1] = decompteSpeed;
	}
}