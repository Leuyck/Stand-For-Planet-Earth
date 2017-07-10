
if (global.playerId == self.playerId)
{
        scr_deployHero();
        scr_canMove();
        scr_detectKey();
		scr_roomCreatorMove();
        scr_aimHero();
        scr_standCheck();
        scr_pressButtonCheck(obj_button);
        scr_setSprites();
		
		
		if(mouse_check_button_released(bindFire1) && collision_circle(mouse_x,mouse_y,10,all,false,false) && instanceSelected=false)
		{
			instanceSelected = collision_circle(mouse_x,mouse_y,10,all,false,false);
		}
		else if (mouse_check_button_released(bindFire1) && instanceSelected!=false)
		{
			if(instanceSelected.object_index == obj_lumiere)
			{
				instance_create(mouse_x,mouse_y,obj_lumiere)
				with(instanceSelected)
				{
					instance_destroy();
				}
				instanceSelected = false;
				zoomEnable = false;
			}
			instanceSelected = false;
			zoomEnable = false;
		}
		if(instanceSelected != false)
		{
			zoomEnable = false;
			with(instanceSelected)
			{
				x=mouse_x
				y=mouse_y
				var scaleFactor = 0.2
				if(mouse_wheel_down())
				{
					image_xscale-=scaleFactor
					image_yscale-=scaleFactor
				}
				if(mouse_wheel_up())
				{
					image_xscale+=scaleFactor
					image_yscale+=scaleFactor
				}
				if(mouse_check_button_released(mb_middle))
				{
					image_xscale =1;
					image_yscale =1;
				}
			}
		}
}