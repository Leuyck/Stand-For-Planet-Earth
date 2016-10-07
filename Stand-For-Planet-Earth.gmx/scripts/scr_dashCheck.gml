///scr_dashCheck()

var hspd = rightKey-leftKey;
var vspd = downKey-upKey;

if ((dashKey && (hspd !=0 || vspd !=0))&& dashNumber >0 && !dashing) {
    alarm[3] = dashTime*room_speed
    
    if hspd == 1 && vspd == 0 then dir = 0;
    if hspd == 0 && vspd == -1 then dir = 90;
    if hspd == -1 && vspd == 0 then dir = 180;
    if hspd == 0 && vspd == 1 then dir = 270;
    
    if hspd == 1 && vspd == -1 then dir = 45;
    if hspd == -1 && vspd == -1 then dir = 45 + 90;
    if hspd == -1 && vspd == 1 then dir = 45 + 90*2;
    if hspd == 1 && vspd == 1 then dir = 45 + 90*3;
    
    dashNumber--
    alarm[2] = dashCooldown * room_speed; 
}

if (alarm[3] > 0 && place_meeting(x,y,obj_decor_base))
{
    dashing = true
    direction = dir;
    speed = 0;
}
else if (alarm[3] > 0)
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
