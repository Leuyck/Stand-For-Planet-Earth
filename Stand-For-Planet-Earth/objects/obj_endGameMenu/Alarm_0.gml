// @description 
visible=true;

btnRetry = instance_create_depth(obj_camera.x,obj_camera.y-height/2+100,-10001,obj_btn_retry);
btnRetry.colonne = 1
btnRetry.position = 1
btnRetry.visible = true;
btnExit = instance_create_depth(obj_camera.x,obj_camera.y+height/2-100,-10001,obj_btn_exit);
btnExit.colonne = 1
btnExit.position = 2
btnExit.visible = true;

with(obj_controller_parent){
	if(mainController){
		self.buttonSelected = obj_btn_retry.id;	
	}
}