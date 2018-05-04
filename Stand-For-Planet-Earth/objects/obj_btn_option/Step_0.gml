/// @description 
event_inherited();

if(click) {
	if(!instance_exists(obj_btn_video)){
		var buttonVideo = instance_create_depth(1484,419,depth,obj_btn_video);
		buttonVideo.position =1;
		buttonVideo.colonne = 2;
		with(obj_controller_parent){
			self.buttonSelected = buttonVideo;	
			self.colonnePosition = 2;
			self.buttonPosition = 1;
			self.memoryPositionColonne1 = 2;
		}
		var buttonSound = instance_create_depth(1482,484,depth,obj_btn_audio);
		buttonSound.position =2;
		buttonSound.colonne = 2;
		buttonSound.visible = false;
		buttonSound.alarm[0] = 5;
		var buttonControls = instance_create_depth(1444,551,depth,obj_btn_controls);
		buttonControls.position =3;
		buttonControls.colonne = 2;
		buttonControls.visible = false;
		buttonControls.alarm[0] = 10;
		click = false;
	}
}