///scr_dashCheck()

var hspd = rightKey-leftKey;
var vspd = downKey-upKey;

if ((dashKey && (hspd !=0 || vspd !=0))&& dashNumber >0 && !dashing) 
{
    alarm[3] = dashTime*room_speed
    dir = scr_getPlayerMoveDirection();    
    dashNumber--
    alarm[2] = dashCooldown * room_speed; 
}

if (alarm[3] > 0)
{
    dashing = true
    direction = dir;
    speed = dashSpeed;
}

if (dashing)
{
    state = "dashing"
    if (!instance_exists (obj_dashBar))
    {
        dashBar = instance_create (self.x, self.y+100, obj_dashBar)
        dashBar.dashBarId = self.playerId
    }
    
}
