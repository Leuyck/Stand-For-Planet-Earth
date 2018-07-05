/// @description Insert description here
///audio
audio_listener_position(x,y,0);

controller = noone;

if(instance_exists(obj_localPlayer) && !DEBUG)
{	
	active = scr_setCameraActive();
	
	if(active){
		scr_setCameraZoom();
		scr_setCameraCoordinates();
	}
}

///room creator parameters
if(instance_exists(obj_RoomCreator) && DEBUG){
	if(mouse_wheel_up() && viewWidth>96 && obj_RoomCreator.zoomEnable){
		viewWidth-=1920/10;
		viewHeight-=1080/10;
	}
	if(mouse_wheel_down() && viewWidth <room_width && obj_RoomCreator.zoomEnable){
		viewWidth += 1920/10;
		viewHeight += 1080/10;
	}
	
	controller = obj_controller_keyboard.id;
	var move_speed_this_frame = 40;
	var move_dir = scr_getPlayerMoveDirection();

	if (move_dir!=noone)  {
		x = x+lengthdir_x(move_speed_this_frame,move_dir);;
		y = y+lengthdir_y(move_speed_this_frame,move_dir);
	}
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,1,100000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);