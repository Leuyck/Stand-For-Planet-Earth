///scr_nameControllerBinds()

k_bindRight = ord("D");
k_bindLeft = ord("Q");
k_bindUp = ord("Z");
k_bindDown = ord("S");
k_bindJump = vk_space;
k_bindDash = vk_shift;
k_bindFire1 = mb_left;
k_bindFire2 = mb_right;
k_bindUse1 = ord("E");
k_bindUse2 = vk_enter;
k_bindCancel = vk_escape;
k_bindLink = ord("A");
k_bindTaunt= ord("T");
k_bindPause =vk_escape;

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

aKey= gamepad_button_check_pressed(gamepadNumber,gp_face1) || keyboard_check_pressed(vk_enter);
bKey = gamepad_button_check_pressed(gamepadNumber,gp_face2) || keyboard_check_pressed(vk_escape);
xKey = gamepad_button_check_pressed(gamepadNumber,gp_face3);
yKey = gamepad_button_check_pressed(gamepadNumber,gp_face4);
startKey = gamepad_button_check_pressed(gamepadNumber,gp_bindPause);
dashKey= gamepad_button_check_pressed(gamepadNumber,gp_bindJump) || gamepad_button_check_pressed(gamepadNumber,gp_bindDash) || keyboard_check_pressed(k_bindJump)|| keyboard_check_pressed(k_bindDash);
cancelKey = gamepad_button_check_pressed(gamepadNumber,gp_bindCancel) || keyboard_check_pressed(k_bindCancel);
useKey = gamepad_button_check_pressed(gamepadNumber,gp_bindUse)||keyboard_check_pressed(k_bindUse1)||keyboard_check_pressed(k_bindUse2);
tauntKey = gamepad_button_check_pressed(gamepadNumber,gp_bindTaunt)||keyboard_check_pressed(k_bindTaunt);
pauseKey = gamepad_button_check_pressed(gamepadNumber,gp_bindPause) ||keyboard_check_pressed(k_bindPause);
fire1Key = gamepad_button_check(gamepadNumber,gp_bindFire1_1) || gamepad_button_check(gamepadNumber,gp_bindFire1_2) || mouse_check_button(k_bindFire1);
fire2Key = gamepad_button_check(gamepadNumber,gp_bindFire2_1) || gamepad_button_check(gamepadNumber,gp_bindFire2_2) || mouse_check_button(k_bindFire2);
linkKey =gamepad_button_check_pressed(gamepadNumber,gp_bindLink) || keyboard_check_pressed(k_bindLink);

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

///Keyboard directions.
upKBind = keyboard_check(vk_up)|| keyboard_check(ord("Z"))
downKBind = keyboard_check(vk_down) || keyboard_check(ord("S"))
leftKBind = keyboard_check(vk_left) || keyboard_check(ord("Q"))
rightKBind = keyboard_check(vk_right) || keyboard_check(ord("D"))

horizontalValue = rightKBind -leftKBind ;
verticalValue = downKBind -upKBind ;
