
switch (controllerIndex){
		case 0 :
		controllerName = "xbox"
		instance_destroy(obj_keyboard_command);
		if(!instance_exists(obj_xbox_command)){
			instance_create_depth(0,0,depth,obj_xbox_command);
		}
		break;
					
		case 1 :
		controllerName = "PS4"
		instance_destroy(obj_xbox_command);
		instance_destroy(obj_keyboard_command);
		break;
		
		case 2 :
		controllerName = "Keyboard"
		instance_destroy(obj_xbox_command);
		if(!instance_exists(obj_keyboard_command)){
			instance_create_depth(0,0,depth,obj_keyboard_command);
		}
		break;
			
}

if(selected){
	with(obj_controller_parent){
		if(mainController){
			if(self.rightBind){
				other.controllerIndex++	;
			}else if (self.leftBind){
				other.controllerIndex--	;
			}
		}
	}
}
if(other.controllerIndex ==3){
	other.controllerIndex =0;	
}
if(other.controllerIndex ==-1){
	other.controllerIndex =2;	
}
