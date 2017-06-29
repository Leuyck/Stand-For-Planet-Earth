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
		if(!instanceToFollow.deployed)
		{
			x = instanceToFollow.x;
			y = instanceToFollow.y;
		}
		else
		{
			x =(mouse_x - instanceToFollow.x)/3 + instanceToFollow.x;
			y =(mouse_y - instanceToFollow.y)/3 + instanceToFollow.y;
		}
	}
}



if(!instance_exists(obj_localPlayer))
{	
	if(mouse_check_button_pressed(mb_left))
	{
		x = mouse_x;
		y = mouse_y;
	}	
	if(mouse_wheel_up() && viewWidth>96)
	{
		viewWidth-=1920/20;
		viewHeight-=1080/20;
	}
	if(mouse_wheel_down() && viewWidth <1920)
	{
		viewWidth += 1920/20;
		viewHeight += 1080/20;
	}
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,1,100000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);