///scr_fireCheck(obj_bullet)

// If we are firing
var bulletType = argument[0];

if(fire1 && alarm[0] <= 0)
{
    state = "firing";
    for (var i = 0; i < shot1_bullet_count; i++) {
        scr_createAndSendNewBullet(id, bulletType)
    } 
    alarm[0] = shot1_delay;
    if (alarm[0] > 10) {
        state = "firing";
    }

}
