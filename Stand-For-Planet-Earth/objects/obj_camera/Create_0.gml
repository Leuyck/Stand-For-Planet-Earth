/// @description Insert description here

camera = camera_create();
active = false;

///view Size;
baseViewWidth = 1920;
baseViewHeight = 1080;
viewWidth = baseViewWidth;
viewHeight = baseViewHeight;
dezoomMaxFactor = 1.5;
maxViewHeight = baseViewHeight * dezoomMaxFactor;
maxViewWidth = maxViewHeight *(1920/1080);

borderMargin = 150;


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,1,100000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

if(instance_exists(obj_spawn1)){
	var xTotal = obj_spawn1.x + obj_spawn2.x + obj_spawn3.x + obj_spawn4.x;
	var yTotal = obj_spawn1.y + obj_spawn2.y + obj_spawn3.y + obj_spawn4.y;
	x = xTotal/4;
	y = yTotal/4;	
}