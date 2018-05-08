///initialize
event_inherited();

ini_open("settings.ini");
width = ini_read_real("VIDEO SETTING","width",1920)
height = ini_read_real("VIDEO SETTING","height",1080)
ini_close();

resolution = noone;

nextButton = instance_create_depth(x+65+sprite_get_width(spr_btn_next),y,depth,obj_btn_next);
nextButton.parent = self.id;
prevButton = instance_create_depth(x-65-sprite_get_width(spr_btn_previous),y,depth,obj_btn_previous);
prevButton.parent = self.id;