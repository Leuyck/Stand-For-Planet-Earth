///scr_initializeLumiere()
///get all the instance making shadow, and get the x1,y1,x2,y2,centerx,centery of each static instance;

image_blend = make_colour_hsv(hue, sat, 255);

staticInstanceDetected = noone;
movingInstanceDetected = noone;

scr_calculShadowForStaticInstance(1,0.1);	

//populate staticInstanceMakingMovingShadowList
staticInstanceMakingMovingShadowList = ds_list_create();
for (var i =0; i<ds_list_size(staticObjectMakingMovingShadowList); ++i) {
    var object = ds_list_find_value(staticObjectMakingMovingShadowList,i);
	collision_circle_list(x,y,radius,object,true,false,staticInstanceMakingMovingShadowList,false);
}

scr_showNotification("Init lumiere",c_blue);