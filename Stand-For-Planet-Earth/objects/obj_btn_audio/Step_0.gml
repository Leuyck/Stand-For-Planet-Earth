event_inherited();
if(click){
	with(obj_controller_parent){
		buttonSelected = scr_selectButtonWithController("left");
	}
	click = false;
}
if(selected){
	if(!instance_exists(obj_sliderBar_global)){
		var sliderGlobal = instance_create_depth(448,384,depth,obj_sliderBar_global);
		sliderGlobal.position =1;
		sliderGlobal.colonne = 3;
		var sliderMusic = instance_create_depth(448,480,depth,obj_sliderBar_music);
		sliderMusic.position =2;
		sliderMusic.colonne = 3;
		sliderMusic.visible = false;
		sliderMusic.alarm[0] = 5;
		var sliderEffects = instance_create_depth(448,576,depth,obj_sliderBar_effects);
		sliderEffects.position =3;
		sliderEffects.colonne = 3;
		sliderEffects.visible = false;
		sliderEffects.alarm[0] = 10;
	}	
}

if(obj_controller_parent.colonnePosition !=3 && obj_controller_parent.buttonSelected != self.id){
	with(obj_sliderBar_parent){
		instance_destroy();	
	}
}

with(obj_controller_parent){
	if(self.colonnePosition == 1){
		instance_destroy(other.id);	
	}
}

