///scr_getCivilianFearObjectFromList(listName);
var list = argument[0];
for(var i = 0; i<ds_list_size(list);i++){//fear if they see scary items
	var scaryInstance = ds_list_find_value(list,i);
	with(scaryInstance){
		if(distance_to_object(other.id)<=other.viewRange && collision_line(other.x, other.y, self.x, self.y, obj_decor_base, false, true)==noone){
			other.fear = true;
			other.fearObject = self.id;
			other.alarm[5] = other.fearDuration;

			with(other){
				if(path_exists(self.path)){
						path_end()
						path_delete(self.path);
				}
			}
		}
	}
}
