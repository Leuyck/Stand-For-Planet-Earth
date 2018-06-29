/// draw Fade

fadeAlpha+= ( fadeState * fadeSpeed);
fadeAlpha = clamp (fadeAlpha, 0, 1);

if (fadeAlpha == 1) {
	if(fadeState ==1){
		fadeState =0;	
	}else if (fadeState == 0){
		fadeState = -1;	
		room_goto(tempTarget);
	}
}

if ((fadeAlpha == 0) && (fadeState == -1)){
    instance_destroy();
}


draw_set_alpha (fadeAlpha);
if(instance_exists(obj_camera)){
	draw_set_color (c_black);
	draw_rectangle(0, 0,obj_camera.maxViewWidth, obj_camera.maxViewHeight,0)
}else{
	draw_set_color (c_white);
	draw_rectangle(0, 0,view_wport[0], view_hport[0],0)
}

draw_set_alpha(1)

