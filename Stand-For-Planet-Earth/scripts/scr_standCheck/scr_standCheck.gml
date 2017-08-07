// determine if we're standing
var hspd = rightKey-leftKey;
var vspd = downKey-upKey;

if(vspd=0 && hspd=0 && state!="firing1" && !dashing && deployed && state !="dead")
{
    state = "standing"
    image_index = 0;
    image_speed=0;
}
