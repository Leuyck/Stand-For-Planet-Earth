///scr_bumpCheck()
 
if(bump){
	if(distance_to_point(dashTargetX,dashTargetY)<2){
		speed = 0;
		dashTargetX = noone;
		dashTargetY = noone;
		bump = false;
	}
	if(x+hspeed<=obj_camera.x-obj_camera.viewWidth/2+obj_camera.borderMargin/2 || x+hspeed >= obj_camera.x+obj_camera.viewWidth/2-obj_camera.borderMargin/2 || y+vspeed <=obj_camera.y-obj_camera.viewHeight/2+obj_camera.borderMargin/2 || y+vspeed>=obj_camera.y+obj_camera.viewHeight/2-obj_camera.borderMargin/2){
        speed = 0;
		dashTargetX = noone;
		dashTargetY = noone;
		bump = false;
	}
}
