///scr_getPlayerMoveDirection()

var move_xinput = 0;
var move_yinput = 0;
var move_dir = 0
 
if(obj_controller_parent.controller == "keyboard"){
	var h_point = obj_controller_parent.horizontalValue;
	var v_point = obj_controller_parent.verticalValue;
}else{
	var h_point = obj_controller_parent.lJoyHValue;
	var v_point = obj_controller_parent.lJoyVValue;
}
if ((h_point != 0) || (v_point != 0)){
	var this_angle = point_direction(0, 0, h_point, v_point);
	move_xinput += lengthdir_x(1, this_angle);
    move_yinput += lengthdir_y(1, this_angle);
}

var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    move_dir = point_direction(0,0,move_xinput,move_yinput);
}else{
	move_dir=noone;
}

return move_dir;