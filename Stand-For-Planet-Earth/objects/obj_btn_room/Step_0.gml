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
		if(roomName =="random"){
			var roomList = scr_getAllRoomWorldList();
			obj_btn_go.lockedRoom =ds_list_find_value(roomList,irandom_range(0,ds_list_size(roomList)-1))
		}else{
			obj_btn_go.lockedRoom =roomName;	
		}
	}
	click = false;
}
with(obj_controller_parent){
	if(mainController){
		if(cancelKey||mouse_check_button(mb_right)){
			obj_btn_go.lockedRoom = noone;	
		}
	}
}