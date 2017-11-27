/// @description 
controller = noone;
btnCurrentlySelected = 1;
width = obj_camera.viewWidth/2;
height = obj_camera.viewHeight/2;

color = make_color_rgb(4,12,41)

btnResume = instance_create_depth(obj_camera.x,obj_camera.y-height/2+100,-10001,obj_btn_resume);
btnResume.buttonNumber = 1;
btnExit = instance_create_depth(obj_camera.x,obj_camera.y+height/2-100,-10001,obj_btn_exit);
btnExit.buttonNumber = 2;

alarm[0] = 5;