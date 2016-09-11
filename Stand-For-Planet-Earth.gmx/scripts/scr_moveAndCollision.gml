var hspd = rightKey - leftKey;
var vspd = downKey - upKey;

if(!dashing && (hspd !=0 || vspd != 0)) {
    var hmove = hspd * walkingMaxSpd;
    var vmove = vspd * walkingMaxSpd;
    
    if (place_meeting(x + hmove, y, obj_decor_base)) {
        while(!place_meeting(x + sign(hmove), y, obj_decor_base)) {
            x += sign(hmove);
        }
    }
    else {
        x += hmove;
    }
    
    if (place_meeting(x, y + vmove, obj_decor_base)) {
        while(!place_meeting(x, y + sign(vmove), obj_decor_base)) {
            y += sign(vmove);
        }
    }
    else {
        y += vmove;
    }
}
