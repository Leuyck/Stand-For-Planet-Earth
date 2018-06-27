///scr_bumpCheck()
 
if(bump)
{
    if (place_meeting(x+hspeed,y+vspeed,obj_decor_base))
    {
        speed = 0;
    }
	if(x+hspeed<=obj_camera.x-obj_camera.viewWidth/2+obj_camera.borderMargin/2 || x+hspeed >= obj_camera.x+obj_camera.viewWidth/2-obj_camera.borderMargin/2 || y+vspeed <=obj_camera.y-obj_camera.viewHeight/2+obj_camera.borderMargin/2 || y+vspeed>=obj_camera.y+obj_camera.viewHeight/2-obj_camera.borderMargin/2){
        speed = 0;
	}
}
