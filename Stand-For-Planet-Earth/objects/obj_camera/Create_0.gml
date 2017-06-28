/// @description Insert description here

camera = camera_create();

viewWidth = 1920;
viewHeight = 1080;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(viewWidth,viewHeight,1,100000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

instanceToFollow = noone;