///scr_dashCheck()

//var hspd = rightKey-leftKey;
//var vspd = downKey-upKey;

if (dashKey && state== "walking" && dashNumber >0 && !dashing && canMove) 
{
    dashing = true
    dashNumber--
    alarm[3] = dashTime*room_speed
    alarm[2] = dashCooldown * room_speed; 
    direction = scr_getPlayerMoveDirection();
    speed = dashSpeed;
        
    state = "dashing"
}
if(dashing)
{
    if (place_meeting(x+hspeed,y+vspeed,obj_decor_base)){
        alarm[3] = -1;
        speed = 0;
        dashing = false;
    }
	if(x+hspeed<=obj_camera.x-obj_camera.viewWidth/2+obj_camera.borderMargin/2 || x+hspeed >= obj_camera.x+obj_camera.viewWidth/2-obj_camera.borderMargin/2 || y+vspeed <=obj_camera.y-obj_camera.viewHeight/2+obj_camera.borderMargin/2 || y+vspeed>=obj_camera.y+obj_camera.viewHeight/2-obj_camera.borderMargin/2){
		alarm[3] = -1;
        speed = 0;
        dashing = false;
	}
}
