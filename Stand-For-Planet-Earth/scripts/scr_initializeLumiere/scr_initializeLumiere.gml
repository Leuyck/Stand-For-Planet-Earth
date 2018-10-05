///scr_initializeLumiere()
///get all the instance making shadow, and get the x1,y1,x2,y2,centerx,centery of each static instance;

image_blend = make_colour_hsv(hue, sat, 255);

ds_map_clear(staticInstanceDetected);
ds_list_clear(staticInstanceDetectedList);

ds_map_clear(movingInstanceDetected);
ds_list_clear(movingInstanceDetectedList);

scr_calculShadowForStaticInstance(20,1);	

//populate staticInstanceMakingMovingShadowList
ds_list_clear(staticInstanceMakingMovingShadowList);
for (var i =0; i<ds_list_size(staticObjectMakingMovingShadowList); ++i) {
    var object = ds_list_find_value(staticObjectMakingMovingShadowList,i);
	collision_circle_list(x,y,radius,object,true,false,staticInstanceMakingMovingShadowList,false);
	for (var j=0; j <ds_list_size(staticInstanceMakingMovingShadowList); ++j) {
		var instance = ds_list_find_value(staticInstanceMakingMovingShadowList,j);
		var xx = instance.x;
		var yy = instance.y;
	    var x1 = xx+lengthdir_x(instance.sprite_width/2-1,instance.image_angle-180);
		var y1 = yy+lengthdir_y(instance.sprite_width/2-1,instance.image_angle-180);
		var x2 = xx+lengthdir_x(instance.sprite_width/2-1,instance.image_angle);
		var y2 = yy+lengthdir_y(instance.sprite_width/2-1,instance.image_angle);
		if(collision_line(lx,ly,xx,yy,obj_mur_parent,true,false)>=0 && collision_line(lx,ly,x1,y1,obj_mur_parent,true,false)>=0 && collision_line(lx,ly,x2,y2,obj_mur_parent,true,false)>=0){
			ds_list_delete(staticInstanceMakingMovingShadowList,j)	
		}
	}
}

scr_showNotification("Init lumiere",c_blue);
initialized = true;