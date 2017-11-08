/// @description 

mouse_clear(mb_left);

var width = obj_btn_scrollResolution.width;
var height = obj_btn_scrollResolution.height;

ini_open("settings.ini");
ini_write_real("VIDEO SETTING","width",width)
ini_write_real("VIDEO SETTING","height",height)
ini_close();

scr_setResolution();