/// @description 
if(click){
	mouse_clear(mb_left);

	var width = obj_btn_scrollResolution.width;
	var height = obj_btn_scrollResolution.height;
	var fullScreen = obj_btn_fullScreen.fullScreen;

	ini_open("settings.ini");
	ini_write_real("VIDEO SETTING","width",width)
	ini_write_real("VIDEO SETTING","height",height)
	ini_write_real("VIDEO SETTING","fullScreen",fullScreen)
	ini_close();

	scr_setResolution();
	click = false;
}