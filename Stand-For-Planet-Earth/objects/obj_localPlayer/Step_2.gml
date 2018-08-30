scr_setSprites();
if(place_meeting(x+hspeed, y+vspeed,obj_decor_base) && dashing){
	speed = 0;
	dashTargetX = noone;
	dashTargetY = noone;
	dashing = false;
}
if(place_meeting(x+hspeed, y+vspeed,obj_decor_base) && bump){
	speed = 0;
	dashTargetX = noone;
	dashTargetY = noone;
	bump = false;
	canMove = true;
}