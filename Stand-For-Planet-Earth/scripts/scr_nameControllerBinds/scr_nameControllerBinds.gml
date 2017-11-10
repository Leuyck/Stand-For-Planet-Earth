///scr_nameControllerBinds()

aBind = gamepad_button_check_pressed(0,gp_face1) || keyboard_check_pressed(vk_enter);
bBind = gamepad_button_check_pressed(0,gp_face2) || keyboard_check_pressed(vk_escape);
xBind = gamepad_button_check_pressed(0,gp_face3);
yBind = gamepad_button_check_pressed(0,gp_face4);

startBind = gamepad_button_check_pressed(0,gp_start)
selectBind = gamepad_button_check_pressed(0,gp_select)

fire1Bind = gamepad_button_check_pressed(0,gp_shoulderr) || gamepad_button_check_pressed(0,gp_shoulderrb)
fire2Bind = gamepad_button_check_pressed(0,gp_shoulderl) || gamepad_button_check_pressed(0,gp_shoulderlb)

stickLBind =gamepad_button_check_pressed(0,gp_stickl)
stickRBind =gamepad_button_check_pressed(0,gp_stickr)

upLBind = gamepad_axis_value(0,gp_axislv) <= -0.7 || gamepad_button_check_pressed(0,gp_padu);
downLBind = gamepad_axis_value(0,gp_axislv) >= 0.7 || gamepad_button_check_pressed(0,gp_padd);
leftLBind = gamepad_axis_value(0,gp_axislh) <= -0.7 || gamepad_button_check_pressed(0,gp_padl);
rightLBind = gamepad_axis_value(0,gp_axislh) >= 0.7 || gamepad_button_check_pressed(0,gp_padr);

upRBind = gamepad_axis_value(0,gp_axisrv) <= -0.7;
downRBind = gamepad_axis_value(0,gp_axisrv) >= 0.7;
leftRBind = gamepad_axis_value(0,gp_axisrh) <= -0.7 ;
rightRBind = gamepad_axis_value(0,gp_axisrh) >= 0.7 ;

///Keyboard
upKBind = keyboard_check_pressed(vk_up)|| keyboard_check_pressed(ord("Z"))
downKBind = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
leftKBind = keyboard_check(vk_left) || keyboard_check(ord("Q"))
rightKBind = keyboard_check(vk_right) || keyboard_check(ord("D"))
if aBind then scr_test();