///scr_drawArrowTowardOutOfScreenObject(objectOutOfScreen,spriteIndex,imageNumber,image_angle,arrowColor)
	var objectOutOfScreen = argument[0];
	var sprite = argument[1];
	var imageNumber = argument[2];
	var spriteAngle = argument[3];
	var arrowColor = argument[4];
	
if(!scr_isInView(30)){
	
	var scale = display_get_gui_width()/1920;
	var camera = obj_camera;
	var alph =1;
	var inner = 1;
	var pad = 30*scale;
	var xView = obj_camera.x - display_get_gui_width()/2;
	var yView = obj_camera.y - display_get_gui_height()/2;

	var sx, sy, tx, ty, dx, dy, mx, my, vx, vy, vl;
	sx = camera.x; sy = camera.y // source position
	tx = objectOutOfScreen.x; ty = objectOutOfScreen.y // destination position
	dx = tx - sx; dy = ty - sy // difference
	vl = sqrt(dx * dx + dy * dy) // distance
	if (vl != 0) {
	    vx = dx / vl; vy = dy / vl
	} else {
	    vx = 0; vy = 0;
	}
	if (vl > inner * 2) {
	    vl -= inner
	    alph = 1
	} else {
	    alph = max(0, (vl - inner) / inner)
	    vl /= 2
	}
	var imageAngle = point_direction(sx, sy, tx, ty)
	if (vy < 0) {
	    vl = min(vl, ((yView + pad) - sy) / vy)
	} else if (vy > 0) {
	    vl = min(vl, ((yView + display_get_gui_height() - pad) - sy) / vy)
	}
	if (vx < 0) {
	    vl = min(vl, ((xView + pad) - sx) / vx)
	} else if (vx > 0) {
	    vl = min(vl, ((xView + display_get_gui_width() - pad) - sx) / vx)
	}
	var xx = sx + vx * vl
	var yy = sy + vy * vl

//Convert xx & yy to GUI coordinates
	xx= (xx - obj_camera.x)+display_get_gui_width()/2;
	yy= (yy - obj_camera.y)+display_get_gui_height()/2;
	
	draw_sprite_ext(spr_pointingArrow,0,xx,yy,scale,scale,imageAngle,c_white,0.8)
	draw_sprite_ext(spr_pointingArrow,1,xx,yy,scale,scale,imageAngle,arrowColor,1)
	

//Convert because of offset of the Arrow
	xx = xx + lengthdir_x((60-98)*scale,imageAngle) - lengthdir_y(0, imageAngle); 
	yy = yy + lengthdir_y((60-98)*scale, imageAngle) + lengthdir_x(0, imageAngle);
	draw_sprite_ext(sprite,imageNumber,xx,yy,scale,scale,spriteAngle,c_white,0.8);
}
