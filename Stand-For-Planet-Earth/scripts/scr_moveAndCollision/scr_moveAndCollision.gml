if(!dashing && canMove) {
	var move_speed_this_frame = walkingMaxSpd//walkingMaxSpd*60*global.deltaTime;

	var move_dir = scr_getPlayerMoveDirection();

	if (move_dir!=noone)  {

		scr_calculMovingPoint(move_speed_this_frame, move_dir);
	
		if(state != "firing1" && !fire2)
		{
			state = "walking"
		}
	}else if (state!="firing1" && state != "firing2" && !dashing && deployed && state !="dead"){
	    state = "standing"
	    image_index = 0;
	    image_speed=0;
	}
}
