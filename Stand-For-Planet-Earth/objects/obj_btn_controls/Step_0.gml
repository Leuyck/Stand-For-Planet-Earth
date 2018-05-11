event_inherited();
if(click){
	with(obj_controller_parent){
		buttonSelected = scr_selectButtonWithController("left");
	}
	click = false;
}
if(selected){
	if(!instance_exists(obj_btn_scrollController)){
		var scrollResolution = instance_create_depth(375,280,depth,obj_btn_scrollController);
		scrollResolution.position =1;
		scrollResolution.colonne = 3;
	}	
}

if(obj_controller_parent.colonnePosition !=3 && obj_controller_parent.buttonSelected != self.id){
	instance_destroy(obj_btn_scrollController);	
}
	
with(obj_controller_parent){
	if(self.colonnePosition == 1){
		instance_destroy(other.id);	
	}
}

