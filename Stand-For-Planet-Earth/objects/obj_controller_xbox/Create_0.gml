/// @description 
event_inherited();

controllerNumber = 1;

gamepad_set_axis_deadzone(controllerNumber-1,joystickDeadzone)

refreshJoystickTime = 0.15*room_speed;
refreshButtonTime = 5;
alarm[0] =-1;
alarm[1] = -1;