///scr_dashCheck()

//var hspd = rightKey-leftKey;
//var vspd = downKey-upKey;

if (dashKey && state== "walking" && dashNumber >0 && !dashing && canMove) 
{
    keyboard_clear(obj_controller.k_bindJump); 
	keyboard_clear(obj_controller.k_bindDash);
    dashing = true
    dashNumber--
    alarm[3] = dashTime*room_speed
    alarm[2] = dashCooldown * room_speed; 
    direction = scr_getPlayerMoveDirection();
    speed = dashSpeed;
        
    state = "dashing"
    if (!instance_exists (obj_dashBar))
    {
        dashBar = instance_create (self.x, self.y+100, obj_dashBar)
        dashBar.dashBarId = self.playerId
    }
}
if(dashing)
{
    if (place_meeting(x+hspeed,y+vspeed,obj_decor_base))
    {
        alarm[3] = -1;
        speed = 0;
        dashing = false;
    }
}
