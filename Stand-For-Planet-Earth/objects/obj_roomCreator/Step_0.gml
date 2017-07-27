
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
		
		
		if(mouse_check_button_released(bindFire1) && collision_circle(mouse_x,mouse_y,10,all,false,false) && instanceSelected==false)
		{
			mouse_clear(bindFire1);
			instanceSelected = collision_circle(mouse_x,mouse_y,10,all,false,false);
		}
		else if (mouse_check_button_released(bindFire1) && instanceSelected!=false)
		{
			mouse_clear(bindFire1);
			if(instanceSelected.object_index == obj_lumiere)
			{
				with (instanceSelected)
				{
					scr_initializeLumiere();
				}
				
				for(var i =0; i<=array_height_2d(instanceCreated);i++)
				{
					var instanceNumberInArray = array_height_2d(instanceCreated)
					instanceCreated[instanceNumberInArray,0] = object_get_name(instanceSelected.object_index);
					instanceCreated[instanceNumberInArray,1] = instanceSelected.x;
					instanceCreated[instanceNumberInArray,2] = instanceSelected.y;
					instanceCreated[instanceNumberInArray,3] = instanceSelected.radius;
					instanceCreated[instanceNumberInArray,4] = color_get_hue(instanceSelected.image_blend);
					instanceCreated[instanceNumberInArray,5] = color_get_saturation(instanceSelected.image_blend);
					instanceCreated[instanceNumberInArray,6] = instanceSelected.lightIntensity;
					instanceCreated[instanceNumberInArray,7] = instanceSelected.id;
					
					break;
				}
			}
			instanceSelected = false;
		}
		if(instanceSelected != false)
		{
			zoomEnable = false;
			with(instanceSelected)
			{
				scr_createObjectBindAction();
			}
			if(global.inWorld ==false){
				instanceSelected = false;
			}
		}
		else
		{
			zoomEnable = true;
		}
		if(mouse_check_button_released(bindFire2) && collision_circle(mouse_x,mouse_y,10,all,false,false) && instanceSelected==false){
			mouse_clear(bindFire2);
			var instanceToDestroy = collision_circle(mouse_x,mouse_y,10,all,false,false);
			for(var i =0; i<=array_height_2d(instanceCreated)-1;i++){
				if(instanceCreated[i,7]==instanceToDestroy.id){
					instanceCreated[i,7]=0;	
					break;		
				}	
			}
			with (instanceToDestroy){
				instance_destroy();
			}
		}
}