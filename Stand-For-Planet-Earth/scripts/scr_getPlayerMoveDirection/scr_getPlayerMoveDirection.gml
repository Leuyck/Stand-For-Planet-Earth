///scr_getPlayerMoveDirection()

var move_xinput = 0;
var move_yinput = 0;
var move_dir = 0

var move_speed_this_frame = walkingMaxSpd*60*global.deltaTime;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    move_dir = point_direction(0,0,move_xinput,move_yinput);
}else{
	move_dir=noone;
}

return move_dir;