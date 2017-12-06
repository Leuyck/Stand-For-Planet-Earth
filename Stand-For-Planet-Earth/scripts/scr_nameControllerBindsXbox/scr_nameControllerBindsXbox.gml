///scr_nameControllerBinds()
//Bind name for xbox controller

var gamepadNumber = controllerNumber -1;

gp_bindJump = gp_face1;
gp_bindDash = gp_face1;
gp_bindFire1_1 = gp_shoulderr;
gp_bindFire1_2 = gp_shoulderrb;
gp_bindFire2_1 = gp_shoulderl;
gp_bindFire2_2 = gp_shoulderlb;
gp_bindUse = gp_face3;
gp_bindCancel = gp_face2;
gp_bindLink = gp_stickr;
gp_bindTaunt= gp_face4;
gp_bindPause =gp_start;

///IN MENU
if(alarm[1] < 0){///set a cd for buttons in menus
	validKey= gamepad_button_check_pressed(gamepadNumber,gp_face1); if(validKey) then alarm[1] = refreshButtonTime;
	cancelKey = gamepad_button_check_pressed(gamepadNumber,gp_face2); if(cancelKey) then alarm[1] = refreshButtonTime;
	xKey = gamepad_button_check_pressed(gamepadNumber,gp_face3); if(xKey) then alarm[1] = refreshButtonTime;
	yKey = gamepad_button_check_pressed(gamepadNumber,gp_face4); if(yKey) then alarm[1] = refreshButtonTime;
	startKey = gamepad_button_check_pressed(gamepadNumber,gp_bindPause); if(startKey) then alarm[1] = refreshButtonTime;
}else{
	validKey = false;
	cancelKey = false;
	xKey = false;
	yKey = false;
	startKey = false;
}

if(alarm[0] < 0){///set a cd for joystick in menus
	upBind = gamepad_axis_value(gamepadNumber,gp_axislv) <= -0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padu); if(upBind) then alarm[0] = refreshJoystickTime;
	downBind = gamepad_axis_value(gamepadNumber,gp_axislv) >= 0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padd); if(downBind) then alarm[0] = refreshJoystickTime; 
	leftBind = gamepad_axis_value(gamepadNumber,gp_axislh) <= -0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padl); if(leftBind) then alarm[0] = refreshJoystickTime; 
	rightBind = gamepad_axis_value(gamepadNumber,gp_axislh) >= 0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padr); if(rightBind) then alarm[0] = refreshJoystickTime;
	
}else{
	upBind = false
	downBind = false;
	leftBind = false;
	rightBind = false;
}

//IN GAME
dashKey= gamepad_button_check_pressed(gamepadNumber,gp_bindJump) || gamepad_button_check_pressed(gamepadNumber,gp_bindDash);
cancelKey = gamepad_button_check_pressed(gamepadNumber,gp_bindCancel);
useKey = gamepad_button_check_pressed(gamepadNumber,gp_bindUse);
tauntKey = gamepad_button_check_pressed(gamepadNumber,gp_bindTaunt);
pauseKey = gamepad_button_check_pressed(gamepadNumber,gp_bindPause)
fire1Key = gamepad_button_check(gamepadNumber,gp_bindFire1_1) || gamepad_button_check(gamepadNumber,gp_bindFire1_2)
fire2Key = gamepad_button_check_pressed(gamepadNumber,gp_bindFire2_1) || gamepad_button_check_pressed(gamepadNumber,gp_bindFire2_2)
linkKey =gamepad_button_check_pressed(gamepadNumber,gp_bindLink)

//selectBind = gamepad_button_check_pressed(gamepadNumber,gp_select)
//stickRBind =gamepad_button_check_pressed(gamepadNumber,gp_stickr)

upLBind = gamepad_axis_value(gamepadNumber,gp_axislv) <= -0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padu);
downLBind = gamepad_axis_value(gamepadNumber,gp_axislv) >= 0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padd);
leftLBind = gamepad_axis_value(gamepadNumber,gp_axislh) <= -0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padl);
rightLBind = gamepad_axis_value(gamepadNumber,gp_axislh) >= 0.4 || gamepad_button_check_pressed(gamepadNumber,gp_padr);

lJoyHValue = gamepad_axis_value(gamepadNumber,gp_axislh)
lJoyVValue =gamepad_axis_value(gamepadNumber,gp_axislv)
rJoyHValue =gamepad_axis_value(gamepadNumber,gp_axisrh)
rJoyVValue =gamepad_axis_value(gamepadNumber,gp_axisrv)

upRBind = gamepad_axis_value(gamepadNumber,gp_axisrv) <= -0.5;
downRBind = gamepad_axis_value(gamepadNumber,gp_axisrv) >= 0.5;
leftRBind = gamepad_axis_value(gamepadNumber,gp_axisrh) <= -0.5 ;
rightRBind = gamepad_axis_value(gamepadNumber,gp_axisrh) >= 0.5 ;


