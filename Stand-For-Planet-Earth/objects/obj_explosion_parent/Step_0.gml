/// @description 
speed = 0;
scale = range/(bbox_right-bbox_left);
image_xscale = scale;
image_yscale = scale;



var listOfHitted = scr_collision_circle_list(x,y,range/2,obj_localNpc,true,true);
if(listOfHitted != noone){
	for (var i = 0; i < ds_list_size(listOfHitted); ++i) {
	    var target =ds_list_find_value(listOfHitted,i);
		if(target.invulnerable == false){
			if(ds_list_find_index(targetHitted,target) == -1){
				if(!collision_line(x,y,target.x,target.y,obj_mur_parent,false,true)){
					ds_list_add(targetHitted,target);
					if(target.object_index == obj_npc_robot_shield){
						var angle = point_direction(target.x,target.y,x,y);
						if(abs(angle_difference(target.image_angle,angle))>=140) {
							target.currentHealth -= damage;
						}
					}else{
						target.currentHealth -= damage;
					}
				}
			}
		}
	}
	ds_list_destroy(listOfHitted);
}

if(image_index >= image_number-1){
	instance_destroy();	
}