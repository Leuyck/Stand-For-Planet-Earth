///initialize
selected = false;
click = false;

ini_open("settings.ini");
fullScreen = ini_read_real("VIDEO SETTING","fullScreen",0)
ini_close();
