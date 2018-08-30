///scr_dashCheck()

dashSpeed = 3 * currentSpeed       // Vitesse de déplacement pendant le dash      

if (dashKey && state== "walking" && dashNumber >0 && !dashing && canMove && !bump) {
	
	var dir = scr_getPlayerMoveDirection();
	var distance = 500;
	dashTargetX = x+lengthdir_x(distance,dir);
	dashTargetY = y+lengthdir_y(distance,dir);
	
	if(!place_meeting(x+lengthdir_x(dashSpeed,dir),y+lengthdir_y(dashSpeed,dir),obj_decor_base)){
		move_towards_point(dashTargetX,dashTargetY,dashSpeed);
		dashing = true
		dashNumber--
		alarm[2] = dashCooldown * room_speed; 
	}else{
		dashing = false;	
		dashTargetX = noone;
		dashTargetY = noone;
	}
}
if(dashing){
	if(distance_to_point(dashTargetX,dashTargetY)<2){
		speed = 0;
		dashTargetX = noone;
		dashTargetY = noone;
		dashing = false;
	}
	if(x+hspeed<=obj_camera.x-obj_camera.viewWidth/2+obj_camera.borderMargin/2 || x+hspeed >= obj_camera.x+obj_camera.viewWidth/2-obj_camera.borderMargin/2 || y+vspeed <=obj_camera.y-obj_camera.viewHeight/2+obj_camera.borderMargin/2 || y+vspeed>=obj_camera.y+obj_camera.viewHeight/2-obj_camera.borderMargin/2){
        speed = 0;
		dashTargetX = noone;
		dashTargetY = noone;
        dashing = false;
	}
}
