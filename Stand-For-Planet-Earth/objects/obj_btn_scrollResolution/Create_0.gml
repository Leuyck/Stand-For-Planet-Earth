///initialize
ini_open("settings.ini");
var savedWidth = ini_read_string("VIDEO SETTING","width","unknow")
var savedHeight = ini_read_string("VIDEO SETTING","width","unknow")
if(savedWidth == "unknow" || savedHeight == "unknow"){
	width = 1920;
	height = 1080;
}else{
	width = savedWidth;
	height = savedHeight;
}
ini_close();

resolution = noone;

image_index = 0;
image_speed = 0;

var next = instance_create_depth(x+sprite_width/2+sprite_get_width(spr_btn_next),y,depth,obj_btn_next);
var prev = instance_create_depth(x-sprite_width/2-sprite_get_width(spr_btn_previous),y,depth,obj_btn_previous);