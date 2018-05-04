event_inherited();
if(click){
	scr_transitionToNextRoom(targetRoom);
	click = false;
}

with(obj_controller_parent){
	if(self.colonnePosition == 1){
		instance_destroy(other.id);	
	}
}