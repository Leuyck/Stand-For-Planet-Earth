/// @description 
speed = 0;
scale = range/(bbox_right-bbox_left);
image_xscale = scale;
image_yscale = scale;

if(image_index >= image_number-1){
	instance_destroy();	
}

var listOfHitted = collision_circle_list(x,y,range/2,obj_localNpc,true,true);
if(listOfHitted != noone){
	for (var i = 0; i < ds_list_size(listOfHitted); ++i) {
	    var target =ds_list_find_value(listOfHitted,i);
		if(ds_list_find_index(targetHitted,target) == -1){
			ds_list_add(targetHitted,target);
			target.currentHealth -= damage;
		}
	}
	ds_list_destroy(listOfHitted);
}
