/// @description Insert description here
///audio
audio_listener_position(x,y,0);

if(instance_exists(obj_localPlayer))
{	
	active = scr_setCameraActive();
	
	if(active){
		scr_setCameraZoom()
		scr_setCameraCoordinates();
	}
}



//make the camera border = to room border;
x = clamp (x,0,room_width-(viewWidth/2));
y = clamp(y,0,room_height-(viewHeight/2));


///room creator parameters
if(!instance_exists(obj_localPlayer)||global.creativeMod == true)
{
	if(mouse_check_button_pressed(mb_left)&&!instance_exists(obj_localPlayer))
	{
		x = mouse_x;
		y = mouse_y;
	}	
	if(instance_exists(obj_RoomCreator)){
		if(mouse_wheel_up() && viewWidth>96 && obj_RoomCreator.zoomEnable)
		{
			viewWidth-=1920/10;
			viewHeight-=1080/10;
		}
		if(mouse_wheel_down() && viewWidth <room_width && obj_RoomCreator.zoomEnable)
		{
			viewWidth += 1920/10;
			viewHeight += 1080/10;
		}
	}
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,1,100000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);