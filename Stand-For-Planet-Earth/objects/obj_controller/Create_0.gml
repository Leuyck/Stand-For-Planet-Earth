/// @description 
gamepadNumber=0//scr_setGamepadNumber();
mainController = false;	
if(gamepadNumber == 0){
	mainController = true;	
}
playerNumber = noone;

refreshJoyStickTime = 0.15*room_speed;
if(instance_exists(obj_btn_parent)&&room!=rm_choseHero1){
		buttonSelected = scr_selectButtonWithController("down");
}
controller = "xbox"
alarm[0] =-1;
gamepad_set_axis_deadzone(gamepadNumber,0.20)

scr_nameControllerBinds();