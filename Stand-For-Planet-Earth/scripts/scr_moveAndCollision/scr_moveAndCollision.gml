

if(!dashing && canMove) {
	var move_speed_this_frame = currentSpeed + (bonusSpeed*moveSpeedBonusFactor)*walkingMaxSpd;

	var move_dir = scr_getPlayerMoveDirection();

	if (move_dir!=noone)  {

		scr_calculMovingPoint(move_speed_this_frame, move_dir);
		
		var chaise = instance_place(x, y, obj_chaise_base);
		if(chaise != noone) {
			with(chaise) {
				scr_calculMovingPoint(move_speed_this_frame, move_dir);
				hspeed = lengthdir_x(x - xprevious, move_dir) / room_speed;
				vspeed = lengthdir_y(y - xprevious, move_dir) / room_speed;
			}
		}
		
		////make the coordinates bordered by camera
		x = clamp(x,obj_camera.x-obj_camera.maxViewWidth/2+obj_camera.borderMargin/2,obj_camera.x+obj_camera.maxViewWidth/2-obj_camera.borderMargin/2);
		y = clamp(y,obj_camera.y-obj_camera.maxViewHeight/2+obj_camera.borderMargin/2,obj_camera.y+obj_camera.maxViewHeight/2-obj_camera.borderMargin/2);		
	
		if(state != "firing1" && state != "firing2"){
			state = "walking"
		}
	}else if (state!="firing1" && state != "firing2" && !dashing && deployed && state !="dead"){
	    state = "standing"
		image_index = 0;
	}
}else{
	if (state!="firing1" && state != "firing2" && !dashing && deployed && state !="dead"){
	    state = "standing"
		image_index = 0;
	}
}
if(!onSpawnVehicle){
	x = clamp(x,70,room_width-70);
	y = clamp(y,70,room_height-70);
}

