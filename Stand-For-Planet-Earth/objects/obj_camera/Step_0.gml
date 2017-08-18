/// @description Insert description here

if (instance_exists(obj_chatTyping) && obj_chatTyping.isTyping == false)
{
	if(instanceToFollow==noone)
	{
		with(obj_localPlayer) 
		{
			if(self.playerId == global.playerId) 
			{
				other.instanceToFollow = self.id;
			}
		}
	}
	else
	{
		if(instance_exists(instanceToFollow))
		{
			if(!instanceToFollow.deployed)
			{
				x = instanceToFollow.x;
				y = instanceToFollow.y;
			}else if(instance_exists(obj_pauseMenu)){
			
			}
			else
			{
				x =(mouse_x - instanceToFollow.x)/3 + instanceToFollow.x;
				y =(mouse_y - instanceToFollow.y)/3 + instanceToFollow.y;
			}
		}
	}
}



if(!instance_exists(obj_localPlayer)||global.creativeMod == true)
{
	if(mouse_check_button_pressed(mb_left)&&!instance_exists(obj_localPlayer))
	{
		x = mouse_x;
		y = mouse_y;
	}	
	if(mouse_wheel_up() && viewWidth>96 && obj_roomCreator.zoomEnable)
	{
		viewWidth-=1920/10;
		viewHeight-=1080/10;
	}
	if(mouse_wheel_down() && viewWidth <room_width && obj_roomCreator.zoomEnable)
	{
		viewWidth += 1920/10;
		viewHeight += 1080/10;
	}
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,1,100000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);