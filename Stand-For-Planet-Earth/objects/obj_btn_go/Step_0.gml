
///Update active status
active = scr_btnGoActiveStatus();
scr_btnGoUpdateText();
click = scr_btnGoClickStatus();

if(click){
	room_goto(rm_option);	
}