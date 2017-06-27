/// @description Insert description here
// You can write your code in this editor

camera = camera_create();
//camera = camera_create_view(x,y,1920,1080,0,-1,-1,-1,0,0);

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(1920,1080,1,100000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

//view_set_camera(0,camera)
view_camera[0] = camera;

instanceToFollow = noone;