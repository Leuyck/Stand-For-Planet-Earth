///@description scr_roomCreatorMove();

var hspd = rightKey - leftKey;
var vspd = downKey - upKey;

if(!dashing && (hspd !=0 || vspd != 0) && canMove) 
{
	var hmove = hspd * walkingMaxSpd;
	var vmove = vspd * walkingMaxSpd;

	x += hmove;

	y += vmove;

	if(state != "firing1" && !fire2)
	{
		state = "walking"
	}
}