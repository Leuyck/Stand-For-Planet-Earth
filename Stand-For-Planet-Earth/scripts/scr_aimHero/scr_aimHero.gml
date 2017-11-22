
if (instance_exists(obj_chatTyping) && obj_chatTyping.isTyping == false)
{
    if (!dashing && deployed &&!bump&&state!="dead" && !instance_exists(obj_pauseMenu))
    {
		if(obj_controller_parent.controller == "keyboard"){					///IF KEYBOARD
	        var aimRange = distance_to_point(mouse_x,mouse_y)+150;
			var this_angle = point_direction(x, y, mouse_x, mouse_y);
			
	        var aim_xinput = x + lengthdir_x(aimRange, point_direction(x,y,mouse_x,mouse_y));
	        var aim_yinput = y + lengthdir_y(aimRange, point_direction(x,y,mouse_x,mouse_y));
	        var imageAngle_requested =  point_direction (x + lengthdir_x(weaponPosX, this_angle) - lengthdir_y(weaponPosY,this_angle), 
						                    y + lengthdir_y(weaponPosX, this_angle) + lengthdir_x(weaponPosY, this_angle),
						                    aim_xinput,aim_yinput);
										
		}else{															///IF CONTROLLER
			var h_point = obj_controller_parent.rJoyHValue;
			var v_point = obj_controller_parent.rJoyVValue;
			var aimRange = 500;
			var this_angle = point_direction(0, 0, h_point, v_point);
			
			if ((h_point != 0) || (v_point != 0)){
				var aim_xinput = x + lengthdir_x(aimRange, this_angle);
				var aim_yinput = y + lengthdir_y(aimRange, this_angle);
				var imageAngle_requested = point_direction (x + lengthdir_x(weaponPosX, this_angle) - lengthdir_y(weaponPosY,this_angle), 
						                    y + lengthdir_y(weaponPosX, this_angle) + lengthdir_x(weaponPosY, this_angle),
						                    aim_xinput,aim_yinput);
			}else{
				var imageAngle_requested = image_angle;
			}
		}
																		///SET IMAGE ANGLE AND ROTATE WITH FRICTION;;
		if(angle_difference(image_angle,imageAngle_requested)<=rotateFriction && angle_difference(image_angle,imageAngle_requested)>=-rotateFriction){
				image_angle = imageAngle_requested
		}
		else if(angle_difference(image_angle,imageAngle_requested)<-10){
			image_angle+=rotateFriction;
			if(image_angle >=360){
				image_angle = 0;	
			}
		}else if(angle_difference(image_angle,imageAngle_requested)>10){
			image_angle-=rotateFriction;
			if(image_angle <0){
				image_angle = 360;	
			}
		}
		direction = this_angle;  						
	}
		  
}