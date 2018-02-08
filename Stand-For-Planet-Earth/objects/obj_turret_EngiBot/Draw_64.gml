/// @description 
/*if(!scr_isInView(30)){
	var margin = 30;
	var xpos;
	var ypos;
	var topLeftCornerAngle = point_direction(display_get_gui_width()/2,display_get_gui_height()/2,0,0);
	var topRightCornerAngle = point_direction(display_get_gui_width()/2,display_get_gui_height()/2,display_get_gui_width(),0);
	var botLeftCornerAngle = point_direction(display_get_gui_width()/2,display_get_gui_height()/2,0,display_get_gui_height());
	var botRightCornerAngle = point_direction(display_get_gui_width()/2,display_get_gui_height()/2,display_get_gui_width(),display_get_gui_height());
	
	if(angleToCamera >topRightCornerAngle && angleToCamera <= topLeftCornerAngle){
		xpos = display_get_gui_width()/2
		ypos = 0 + margin
	}else if(angleToCamera >topLeftCornerAngle && angleToCamera <= botLeftCornerAngle){
		xpos = 0+margin
		ypos = display_get_gui_height()/2
	}else if(angleToCamera >botLeftCornerAngle && angleToCamera <= botRightCornerAngle){
		xpos = display_get_gui_width()/2
		ypos = display_get_gui_height() - margin
	}else{
		xpos = display_get_gui_width();
		ypos = display_get_gui_height()/2
	}
	draw_circle(xpos,ypos,10,false)
}





