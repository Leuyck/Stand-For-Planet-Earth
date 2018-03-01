/// @description 
controller = noone;
btnCurrentlySelected = 1;
width = obj_camera.viewWidth/2;
height = obj_camera.viewHeight/2;

color = make_color_rgb(4,12,41)
visible = false

btnRetry = instance_create_depth(obj_camera.x,obj_camera.y-height/2+100,-10001,obj_btn_retry);
btnRetry.buttonNumber = 1;	
btnRetry.visible = false;
btnExit = instance_create_depth(obj_camera.x,obj_camera.y+height/2-100,-10001,obj_btn_exit);
btnExit.buttonNumber = 2;
btnExit.visible = false;


alarm[0] = 2.5* room_speed;