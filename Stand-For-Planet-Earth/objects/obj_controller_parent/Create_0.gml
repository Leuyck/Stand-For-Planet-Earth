/// @description 
buttonSelected = noone;
heroSelected = noone;

controllerNumber=0;
mainController = false;	
playerNumber = noone;

scr_nameControllerBindsXbox()

if(instance_exists(obj_btn_parent)&&room!=rm_choseHero){
		buttonSelected = scr_selectButtonWithController("down");
}


