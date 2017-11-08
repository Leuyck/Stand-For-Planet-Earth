///initialize
ini_open("settings.ini");
width = ini_read_real("VIDEO SETTING","width",1920)
height = ini_read_real("VIDEO SETTING","height",1080)
ini_close();

resolution = noone;

image_index = 0;
image_speed = 0;

var next = instance_create_depth(x+sprite_width/2+sprite_get_width(spr_btn_next),y,depth,obj_btn_next);
var prev = instance_create_depth(x-sprite_width/2-sprite_get_width(spr_btn_previous),y,depth,obj_btn_previous);