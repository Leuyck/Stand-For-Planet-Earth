/// @description 
refreshJoyStickTime = 0.15*room_speed;
buttonSelected = scr_selectButtonWithController("down");
controller = "xbox"
alarm[0] =-1;
gamepad_set_axis_deadzone(0,0.20)