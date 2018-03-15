if(state =="coming"){
	image_angle = direction;
	if(!path_exists(spawnPath)){
		spawnPath = path_add();
		path_add_point(spawnPath,x,y,100)
		path_add_point(spawnPath,x+lengthdir_x(point_distance(x,y,obj_dropHeros.x,obj_dropHeros.y)- startDecelerateDistance, point_direction(x,y,obj_dropHeros.x,obj_dropHeros.y)),y+lengthdir_y(point_distance(x,y,obj_dropHeros.x,obj_dropHeros.y) - startDecelerateDistance,point_direction(x,y,obj_dropHeros.x,obj_dropHeros.y)),100);
		path_add_point(spawnPath,obj_dropHeros.x,obj_dropHeros.y,10)
		path_set_kind(spawnPath,0);
		path_set_closed(spawnPath,false)
		path_start(spawnPath,spd,path_action_stop,false)
	}
	if(point_distance(x,y,obj_dropHeros.x,obj_dropHeros.y)<100){
		state = "descending";
	}
}else if(state =="descending"){
	if(abs(angle_difference(image_angle,dropingAngle))>1){
		image_angle -=sign(angle_difference(image_angle,dropingAngle))*0.8
	}else{
		image_angle = dropingAngle;
	}
	if(image_xscale>minimumSize){
		image_xscale-=0.001;
	}else{
		image_xscale = minimumSize;
	}
	image_yscale = image_xscale;
	
	if(image_angle == dropingAngle && image_xscale == minimumSize){
		if(alarm[0] = -1){
			alarm[0] = stayDownDuration;
		}
		if(path_exists(spawnPath)){
			path_end();	
			path_delete(spawnPath);
			spawnPath = noone;
		}
	}
}else if(state == "ascending"){
	if(!path_exists(spawnPath)){
		spawnPath = path_add();
		path_add_point(spawnPath,x,y,10)
		path_add_point(spawnPath,x+lengthdir_x(startDecelerateDistance, escapeAngle),y+lengthdir_y(startDecelerateDistance,escapeAngle),100);
		path_add_point(spawnPath,xEnd,yEnd,100);
		path_set_kind(spawnPath,0);
		path_set_closed(spawnPath,false)
		path_start(spawnPath,spd,path_action_stop,false)
	}
	if(abs(angle_difference(image_angle,escapeAngle))>1){
		image_angle -=sign(angle_difference(image_angle,escapeAngle))*0.8
	}else{
		image_angle = escapeAngle;
		if(image_xscale == 1){
			state = "escaping";	
		}
	}
	if(image_xscale<1){
		image_xscale+=0.001;
		image_yscale = image_xscale;
	}else{
		image_xscale = 1;
		image_yscale = image_xscale;
		if(image_angle == escapeAngle){
			state = "escaping";	
		}
	}
}else if (state == "escaping"){
	image_angle = direction;
	if(path_position==1){
		instance_destroy();
	}
}