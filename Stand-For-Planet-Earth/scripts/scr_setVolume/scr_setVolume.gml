///scr_setVolume()

ini_open("settings.ini");
global.globalVolume = ini_read_real("AUDIO SETTING","Global",100)
global.musicVolume = ini_read_real("AUDIO SETTING","Music",100)
global.effectVolume = ini_read_real("AUDIO SETTING","Effects",100)
ini_close();