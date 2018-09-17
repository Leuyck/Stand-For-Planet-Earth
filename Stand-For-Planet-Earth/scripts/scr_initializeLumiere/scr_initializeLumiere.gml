///scr_initializeLumiere()
///get all the instance making shadow, and get the x1,y1,x2,y2,centerx,centery of each static instance;

image_blend = make_colour_hsv(hue, sat, 255);

staticInstanceDetected = noone;
movingInstanceDetected = noone;

scr_calculShadowForStaticInstance(1,0.1);	

scr_showNotification("Init lumiere",c_blue);