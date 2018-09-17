var obj = argument[0];
if(instance_exists(obj_mur_epais)){
	var collidedWall = collision_line(self.x, self.y, obj.x, obj.y, obj_mur_parent, false, true);
	if(collidedWall == noone) {
		return false;	
	}
	var wallName = object_get_name(collidedWall.object_index);
	var wallBaseName = object_get_name(obj_mur_epais.object_index);
	return string_start_with(wallName, wallBaseName);
}else{
	return false;	
}