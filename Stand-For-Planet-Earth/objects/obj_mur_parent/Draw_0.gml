/// @description 
draw_self();
if(copied ==false){
	var instance = self.id;
	alignedWalls = array_create(0,0)
	alignedWalls[0,0] = instance.sprite_index;
	alignedWalls[0,1] = instance.x;
	alignedWalls[0,2] = instance.y;
	alignedWalls[0,3] = instance.image_angle;
	alignedWalls[0,4] = instance.id;
	
	var vertical = false;
	var horizontal = false;
	var name = string_copy(object_get_name(instance.object_index),1,11);
	if((place_meeting(instance.x+instance.sprite_width,instance.y,obj_mur_parent) && instance_place(instance.x+instance.sprite_width,instance.y,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x+instance.sprite_width,instance.y,obj_mur_parent).object_index),1,11) == name) ||
	   (place_meeting(instance.x-instance.sprite_width,instance.y,obj_mur_parent) && instance_place(instance.x-instance.sprite_width,instance.y,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x-instance.sprite_width,instance.y,obj_mur_parent).object_index),1,11) == name)){
		vertical = true;	
	}else if((place_meeting(instance.x,instance.y+instance.sprite_height,obj_mur_parent) && instance_place(instance.x,instance.y+instance.sprite_height,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x,instance.y+instance.sprite_height,obj_mur_parent).object_index),1,11) == name) ||
			 (place_meeting(instance.x,instance.y-instance.sprite_height,obj_mur_parent) && instance_place(instance.x,instance.y-instance.sprite_height,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x,instance.y-instance.sprite_height,obj_mur_parent).object_index),1,11) == name)){
		horizontal = true;
	}else{
		copied = true;
		exit;
	}
	
	if(vertical){
		var j = 0;
		while(place_meeting(instance.x+instance.sprite_width,instance.y,obj_mur_parent) && instance_place(instance.x+instance.sprite_width,instance.y,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x+instance.sprite_width,instance.y,obj_mur_parent).object_index),1,11) == name){
			j++;
			instance = instance_place(instance.x+instance.sprite_width,instance.y,obj_mur_parent);
			alignedWalls[j,0] = instance.sprite_index;
			alignedWalls[j,1] = instance.x;
			alignedWalls[j,2] = instance.y;
			alignedWalls[j,3] = instance.image_angle;
			alignedWalls[j,4] = instance.id;
			instance.copied = true;
		}
		instance = self.id;
		while(place_meeting(instance.x-instance.sprite_width,instance.y,obj_mur_parent) && instance_place(instance.x-instance.sprite_width,instance.y,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x-instance.sprite_width,instance.y,obj_mur_parent).object_index),1,11) == name){
			j++
			instance = instance_place(instance.x-instance.sprite_width,instance.y,obj_mur_parent);
			alignedWalls[j,0] = instance.sprite_index;
			alignedWalls[j,1] = instance.x;
			alignedWalls[j,2] = instance.y;
			alignedWalls[j,3] = instance.image_angle;
			alignedWalls[j,4] = instance.id;
			instance.copied=true;
		}
	}else if(horizontal){
		var j = 0;
		while(place_meeting(instance.x,instance.y+instance.sprite_height,obj_mur_parent) && instance_place(instance.x,instance.y+instance.sprite_height,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x,instance.y+instance.sprite_height,obj_mur_parent).object_index),1,11) == name){
			j++;
			instance = instance_place(instance.x,instance.y+instance.sprite_height,obj_mur_parent);
			if(instance.copied) then break;
			alignedWalls[j,0] = instance.sprite_index;
			alignedWalls[j,1] = instance.x;
			alignedWalls[j,2] = instance.y;
			alignedWalls[j,3] = instance.image_angle;
			alignedWalls[j,4] = instance.id;
			instance.copied = true;
		}
		instance = self.id;
		while(place_meeting(instance.x,instance.y-instance.sprite_height,obj_mur_parent) && instance_place(instance.x,instance.y-instance.sprite_height,obj_mur_parent).copied == false && string_copy(object_get_name(instance_place(instance.x,instance.y-instance.sprite_height,obj_mur_parent).object_index),1,11) == name){
			j++
			instance = instance_place(instance.x,instance.y-instance.sprite_height,obj_mur_parent);
			if(instance.copied) then break;
			alignedWalls[j,0] = instance.sprite_index;
			alignedWalls[j,1] = instance.x;
			alignedWalls[j,2] = instance.y;
			alignedWalls[j,3] = instance.image_angle;
			alignedWalls[j,4] = instance.id;
			instance.copied=true;
		}
	}
	var maxX = x;
	var minX = x;
	var maxY = y;
	var minY = y;
	for (var i = 0; i < array_height_2d(alignedWalls); ++i) {
	   maxX=max(maxX,alignedWalls[i,1])
	   minX=min(minX,alignedWalls[i,1])
	   maxY=max(maxY,alignedWalls[i,2])
	   minY=min(minY,alignedWalls[i,2])
	}
	var surfWidth= maxX-minX+sprite_width;
	var surfHeight = maxY-minY+sprite_height;
	surf = noone
	surf = scr_checkAndCreateSurface(surfWidth,surfHeight,surf);

	surface_set_target(surf);
	draw_clear_alpha(0, 0);
	for (var i = 0; i < array_height_2d(alignedWalls); ++i) {
	   draw_sprite_ext(alignedWalls[i,0],-1,alignedWalls[i,1]-minX+sprite_width/2,alignedWalls[i,2]-minY+sprite_height/2,1,1,alignedWalls[i,3],c_white,1);
	}
	var sprite = sprite_create_from_surface(surf,0,0,surfWidth,surfHeight,false,false,surfWidth/2,surfHeight/2);

	surface_reset_target();
	surface_free(surf);

	var mur =instance_create_depth(minX+(maxX-minX)/2,minY+(maxY-minY)/2,depth,obj_mur_parent);
	mur.sprite_index = sprite;
	mur.copied = true;
	mur.visible = true;
	copied = true;
	for (var i = 0; i < array_height_2d(alignedWalls); ++i){
		instance_destroy(alignedWalls[i,4]);
	}
}