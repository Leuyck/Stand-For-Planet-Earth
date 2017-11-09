/// @description 
if(click == true){
	if(changeRoomButton){
		if !instance_exists (obj_roomTransition)
		{
		    var tempRoomFade;
		    tempRoomFade = instance_create (x, y ,obj_roomTransition);
		    tempRoomFade.tempTarget = self.targetRoom;
		}
	}
}

if(selected == true){
	image_index = 1;	
}else{
	image_index = 0;	
}