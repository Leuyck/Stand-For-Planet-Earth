event_inherited();
if(click){
	//room_goto(targetRoom);
	instance_destroy(obj_title);
	if(!instance_exists(obj_sliderBar_global)){
		var sliderGlobal = instance_create_depth(448,384,depth,obj_sliderBar_global);
		sliderGlobal.position =1;
		sliderGlobal.colonne = 3;
		with(obj_controller_parent){
			self.buttonSelected = sliderGlobal;	
			self.colonnePosition = 3;
			self.buttonPosition = 1;
			self.memoryPositionColonne2 = 2;
		}
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
	click = false;
}


with(obj_controller_parent){
	if(self.colonnePosition == 1){
		instance_destroy(other.id);	
	}
}

