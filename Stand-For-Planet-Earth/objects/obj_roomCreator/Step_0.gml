
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
				
				var alreadyInArray = false;
				for(var i =0; i<array_height_2d(instanceCreated);i++){
					if(instanceCreated[i,7] == instanceSelected.id){
					
						scr_refreshVariableInto2dArray(instanceCreated,i,object_get_name(instanceSelected.object_index),instanceSelected.x,instanceSelected.y,instanceSelected.radius,
						color_get_hue(instanceSelected.image_blend),color_get_saturation(instanceSelected.image_blend),instanceSelected.lightIntensity,instanceSelected.id);
						alreadyInArray=true;
			
						break;
					}
				}
				if(alreadyInArray==false){
					scr_addVariableInto2dArray(instanceCreated,object_get_name(instanceSelected.object_index),instanceSelected.x,instanceSelected.y,instanceSelected.radius,
					color_get_hue(instanceSelected.image_blend),color_get_saturation(instanceSelected.image_blend),instanceSelected.lightIntensity,instanceSelected.id);
				}
			}
			if(instanceSelected.object_index==obj_spriteResizer){
				var alreadyInArray = false;
				for(var i =0; i<array_height_2d(instanceResized);i++){
					if(instanceResized[i,3] == instanceSelected.id){
						scr_refreshVariableInto2dArray(instanceResized,i,sprite_get_name(instanceSelected.sprite_index),instanceSelected.image_xscale*instanceSelected.sprite_width,instanceSelected.image_yscale*instanceSelected.sprite_height,instanceSelected.id);
						alreadyInArray=true;
						break;
					}
				}
				if(alreadyInArray == false){
					scr_addVariableInto2dArray(instanceResized,sprite_get_name(instanceSelected.sprite_index),instanceSelected.image_xscale*instanceSelected.sprite_width,instanceSelected.image_yscale*instanceSelected.sprite_height,instanceSelected.id);
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