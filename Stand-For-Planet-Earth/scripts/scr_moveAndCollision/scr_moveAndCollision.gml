

if(!dashing && canMove) {
	var move_speed_this_frame = walkingMaxSpd + (bonusSpeed*moveSpeedBonusFactor)*walkingMaxSpd;

	var move_dir = scr_getPlayerMoveDirection();

	if (move_dir!=noone)  {

		scr_calculMovingPoint(move_speed_this_frame, move_dir);
		////make the coordinates bordered by camera
		if(obj_camera.viewHeight >= obj_camera.maxViewHeight){
			x = clamp(x,obj_camera.x-obj_camera.viewWidth/2+obj_camera.borderMargin/2,obj_camera.x+obj_camera.viewWidth/2-obj_camera.borderMargin/2);
			y = clamp(y,obj_camera.y-obj_camera.viewHeight/2+obj_camera.borderMargin/2,obj_camera.y+obj_camera.viewHeight/2-obj_camera.borderMargin/2);
		}
		
	
		if(state != "firing1" && state != "firing2" && !fire2)
		{
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



