///scr_dashCheck()

hspd = rightKey-leftKey;
vspd = downKey-upKey;

if ((dashKey && (hspd !=0 || vspd !=0))&& dashNumber >0 && state != "dashing") {
    instance_create (x + hspd * dashDistance, y +vspd * dashDistance, obj_dashPoint)
    move_towards_point(obj_dashPoint.x, obj_dashPoint.y, walkingMaxSpd * 2)
    state = "dashing" 
    dashNumber--;
    alarm[2] = dashCooldown * room_speed;    
}
if (distance_to_object (obj_dashPoint) ==0){
    speed=0
    with (obj_dashPoint){
        instance_destroy()
        }
    state = "standing"
}

