

if (!dashing && deployed &&!bump&&state!="dead" && !instance_exists(obj_pauseMenu)){
	if(controller.object_index == obj_controller_keyboard){	///IF KEYBOARD
		var aimRange = distance_to_point(mouse_x,mouse_y)+150;
		var this_angle = point_direction(x, y, mouse_x, mouse_y);
			
		var aim_xinput = x + lengthdir_x(aimRange, point_direction(x,y,mouse_x,mouse_y));
		var aim_yinput = y + lengthdir_y(aimRange, point_direction(x,y,mouse_x,mouse_y));
		var imageAngle_requested =  point_direction (x + lengthdir_x(relativeBoutCanonX, this_angle) - lengthdir_y(relativeBoutCanonY,this_angle), 
										y + lengthdir_y(relativeBoutCanonX, this_angle) + lengthdir_x(relativeBoutCanonY, this_angle),
										aim_xinput,aim_yinput);						
	}else{///IF CONTROLLER
		var h_point = controller.rJoyHValue;
		var v_point = controller.rJoyVValue;
		var aimRange = 500;
		var this_angle = point_direction(0, 0, h_point, v_point);
			
		if ((h_point != 0) || (v_point != 0)){
			var aim_xinput = x + lengthdir_x(aimRange, this_angle);
			var aim_yinput = y + lengthdir_y(aimRange, this_angle);
			var imageAngle_requested = point_direction (x + lengthdir_x(relativeBoutCanonX, this_angle) - lengthdir_y(relativeBoutCanonY,this_angle), 
										y + lengthdir_y(relativeBoutCanonX, this_angle) + lengthdir_x(relativeBoutCanonY, this_angle),
										aim_xinput,aim_yinput);
		}else{
			var imageAngle_requested = image_angle;
		}
	}
	
	///SET IMAGE ANGLE AND ROTATE WITH FRICTION;;
	image_angle = scr_setCharacterImageAngleWithFriction(imageAngle_requested,rotateFriction)
	direction = this_angle;  						
}
		  
