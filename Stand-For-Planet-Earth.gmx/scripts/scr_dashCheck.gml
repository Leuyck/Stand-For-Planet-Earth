///scr_dashCheck()

var hspd = rightKey-leftKey;
var vspd = downKey-upKey;

if ((dashKey && (hspd !=0 || vspd !=0))&& dashNumber >0 && !dashing) {
    instance_create (x + hspd * dashDistance, y +vspd * dashDistance, obj_dashPoint)
    move_towards_point(obj_dashPoint.x, obj_dashPoint.y, walkingMaxSpd * 2)
    dashNumber--;
    dashing = true
    alarm[2] = dashCooldown * room_speed;    
}
if (distance_to_object (obj_dashPoint) ==0){
    speed=0
    with (obj_dashPoint){
        instance_destroy()
        }
    dashing = false
}

if (dashing)
{
    state = "dashing"
    if (!instance_exists (obj_dashBar))
    {
        instance_create (x, y+100, obj_dashBar)
    }
    
}
