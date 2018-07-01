/// @description 
width = obj_camera.viewWidth/2;
height = obj_camera.viewHeight/2;

color = make_color_rgb(4,12,41)

btnResume = instance_create_depth(obj_camera.x,obj_camera.y-height/2+100,-10001,obj_btn_resume);
btnResume.colonne = 1
btnResume.position = 1
btnResume.visible = true;
btnExit = instance_create_depth(obj_camera.x,obj_camera.y+height/2-100,-10001,obj_btn_exit);
btnExit.colonne = 1
btnExit.position = 2
btnExit.visible = true;

with(obj_controller_parent){
	if(mainController){
		self.buttonSelected = other.btnResume;	
	}
}

alarm[0] = 5;