event_inherited();
if(click){
	with(obj_controller_parent){
		buttonSelected = scr_selectButtonWithController("left");
	}
	click = false;
}
if(selected){
	if(!instance_exists(obj_btn_scrollResolution)){
		var scrollResolution = instance_create_depth(375,384,depth,obj_btn_scrollResolution);
		scrollResolution.position =1;
		scrollResolution.colonne = 3;
		var fullScreenSelector = instance_create_depth(380,480,depth,obj_btn_fullScreen);
		fullScreenSelector.position =2;
		fullScreenSelector.colonne = 3;
		fullScreenSelector.visible = false;
		fullScreenSelector.alarm[0] = 5;
		var applyButton = instance_create_depth(380,576,depth,obj_btn_apply);
		applyButton.position =3;
		applyButton.colonne = 3;
		applyButton.visible = false;
		applyButton.alarm[0] = 10;
	}	
}

if(obj_controller_parent.colonnePosition !=3 && obj_controller_parent.buttonSelected != self.id){
	instance_destroy(obj_btn_scrollResolution);	
	instance_destroy(obj_btn_fullScreen);	
	instance_destroy(obj_btn_apply);	
}
with(obj_controller_parent){
	if(self.colonnePosition == 1){
		instance_destroy(other.id);	
	}
}