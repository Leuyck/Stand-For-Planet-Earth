///scr_setResolution()
ini_open("settings.ini")
var displayWidth = ini_read_real("VIDEO SETTING","width",1920);
var displayHeight = ini_read_real("VIDEO SETTING","height",1080);
var fullScreen = ini_read_real("VIDEO SETTING","fullScreen",0);
ini_close();

display_set_gui_size(displayWidth,displayHeight);
window_set_size(displayWidth,displayHeight);
display_reset(0,true);///never put something more thant 0 for AA;

var baseWidth = 1920;
var baseHeight = 1080;

var aspect = baseWidth/baseHeight;
if(displayWidth >= displayHeight){
	var height = min(baseHeight,displayHeight);	
	var width = height * aspect;
}

surface_resize(application_surface,width,height);
window_set_fullscreen(fullScreen)

global.displayRatio = display_get_gui_width()/1920;