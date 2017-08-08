
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
						instanceCreated[i,7] = instanceSelected.id;
						instanceCreated[i,0] = object_get_name(instanceSelected.object_index);
						instanceCreated[i,1] = instanceSelected.x;
						instanceCreated[i,2] = instanceSelected.y;
						instanceCreated[i,3] = instanceSelected.radius;
						instanceCreated[i,4] = color_get_hue(instanceSelected.image_blend);
						instanceCreated[i,5] = color_get_saturation(instanceSelected.image_blend);
						instanceCreated[i,6] = instanceSelected.lightIntensity;
						alreadyInArray=true;
						
						break;
					}
				}
				if(alreadyInArray==false){
					var instanceNumberInArray = array_height_2d(instanceCreated)
					instanceCreated[instanceNumberInArray,7] = instanceSelected.id;
					instanceCreated[instanceNumberInArray,0] = object_get_name(instanceSelected.object_index);
					instanceCreated[instanceNumberInArray,1] = instanceSelected.x;
					instanceCreated[instanceNumberInArray,2] = instanceSelected.y;
					instanceCreated[instanceNumberInArray,3] = instanceSelected.radius;
					instanceCreated[instanceNumberInArray,4] = color_get_hue(instanceSelected.image_blend);
					instanceCreated[instanceNumberInArray,5] = color_get_saturation(instanceSelected.image_blend);
					instanceCreated[instanceNumberInArray,6] = instanceSelected.lightIntensity;
				}
			}
			if(instanceSelected.object_index==obj_spriteResizer){
				var alreadyInArray = false;
				for(var i =0; i<array_height_2d(instanceResized);i++){
					if(instanceResized[i,3] == instanceSelected.id){
						instanceResized[i,0] = sprite_get_name(instanceSelected.sprite_index);
						instanceResized[i,1] = instanceSelected.image_xscale*instanceSelected.sprite_width;
						instanceResized[i,2] = instanceSelected.image_yscale*instanceSelected.sprite_height;
						alreadyInArray=true;
						break;
					}
				}
				if(alreadyInArray == false){
					var instanceNumberInArray = array_height_2d(instanceResized)
					instanceResized[instanceNumberInArray,3] = instanceSelected.id;
					instanceResized[instanceNumberInArray,0] = sprite_get_name(instanceSelected.sprite_index);
					instanceResized[instanceNumberInArray,1] = instanceSelected.image_xscale*instanceSelected.sprite_width;
					instanceResized[instanceNumberInArray,2] = instanceSelected.image_yscale*instanceSelected.sprite_height;
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