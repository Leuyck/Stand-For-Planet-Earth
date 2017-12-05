/// @description 
scr_nameControllerBindsXbox()
gamepad_set_axis_deadzone(controllerNumber-1,0.20)

event_inherited();

//create other xbox Controller if connected;
if(mainController){
	if(instance_number(obj_controller_xbox)!=4){
		var gp_num = gamepad_get_device_count();
		for (var i = 1; i < gp_num; i++;)
		{
			if (gamepad_is_connected(i)){
				var instanceExists = false;
				with(obj_controller_xbox){
					if(self.controllerNumber == i+1){ ///controllerNumber start at 1 instead of 0 in opposition with gameppad_is_connected wich start at 0;
						instanceExists = true;
					}
				}
				if(instanceExists==false){
					var instance = instance_create_layer(x,y,layer,obj_controller_xbox);
					instance.controllerNumber = i+1;
					instance.mainController = false;
				}
			}else{
				with(obj_controller_xbox){
					if(self.controllerNumber == i+1){
						instance_destroy();	
					}
				}
			}
		}
	}
}