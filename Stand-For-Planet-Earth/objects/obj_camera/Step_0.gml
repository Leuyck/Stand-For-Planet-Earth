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

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);