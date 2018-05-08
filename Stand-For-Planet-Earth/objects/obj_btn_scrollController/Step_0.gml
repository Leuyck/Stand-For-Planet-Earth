
switch (controllerIndex){
		case 0 :
		controllerName = "xbox"
		break;
					
		case 1 :
		controllerName = "PS4"
		break;
		
		case 2 :
		controllerName = "Keyboard"
		break;
			
}

if(selected){
	with(obj_controller_parent){
		if(mainController){
			if(self.rightBind){
				if(other.controllerIndex ==2){
					other.controllerIndex =0;	
				}else{
					other.controllerIndex++	;
				}
			}else if (self.leftBind){
				if(other.controllerIndex ==0){
					other.controllerIndex =2;	
				}else{
					other.controllerIndex--	;
				}
			}
		}
	}
}
