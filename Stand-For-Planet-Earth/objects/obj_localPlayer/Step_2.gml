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

if(dashing || bump){//anti out of room
	var margin = 10;
	if(bbox_bottom + margin>=room_height || bbox_top-margin<=0 || bbox_left-margin<=0 || bbox_right+margin>=room_width){
		speed = 0;
		dashTargetX = noone;
		dashTargetY = noone;
		dashing = false;
		bump = false;
		canMove = true;
	}
}