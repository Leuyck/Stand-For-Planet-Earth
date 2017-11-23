/// @description 
event_inherited();

if(appear == true){
	if(alpha<1){
		alpha+=0.02	
	}
}else{
	if(alpha>0){
		alpha-=0.04;	
	}else{
		instance_destroy();
		obj_btn_go.lockedRoom = noone;
	}
}

if(click){
	if(obj_btn_go.lockedRoom == noone){
		obj_btn_go.lockedRoom =roomName;	
	}
	click = false;
}
with(obj_controller_parent){
	if(mainController){
		if(cancelKey){
			obj_btn_go.lockedRoom = noone;	
		}
	}
}