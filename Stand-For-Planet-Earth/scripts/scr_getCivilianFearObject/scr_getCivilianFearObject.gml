///scr_getCivilianFearObject(IA)
var IA=argument[0]

if(fear == false){
	for(var i = 0; i<ds_list_size(scaryObject);i++){//fear if they see scary items
	var scaryItem = ds_list_find_value(scaryObject,i);
		with(scaryItem){
			if(collision_line(IA.x, IA.y, scaryItem.x, scaryItem.y, obj_decor_base, false, true)==noone){
				IA.fear = true;
				IA.fearObject = self.id;
				IA.alarm[5] = IA.fearDuration;
				with(other){
					path_end()
				}
			}
		}
	}
	
	for(var i = 0; i<ds_list_size(scaryPeople);i++){//fear if they see scary people
		var people = ds_list_find_value(scaryPeople,i);
		with (people){
			if(collision_line(IA.x,IA.y,self.x,self.y,obj_decor_base,false,true)==noone){
				if(distance_to_object(IA)<IA.viewRange){
					IA.fear = true
					IA.fearObject =self.id
					IA.alarm[5] = IA.fearDuration;
				}
			}
		}
	}
}else if(fear == true){ //if afraid
	with(obj_localPlayer){ //fear if they see player
		if(collision_line(IA.x,IA.y,self.x,self.y,obj_decor_base,false,true)==noone){
			if(distance_to_object(IA)<IA.viewRange){
				IA.alarm[5] = IA.fearDuration;
				IA.fearObject =self.id
				if(ds_list_find_index(IA.scaryPeople, self.id)==-1){
					ds_list_add(IA.scaryPeople,self.id);
				}
			}
		}
	}	
	var closestEnnemy = instance_nearest(IA.x,IA.y,obj_localPlayer);//fear if they hear player
	if(distance_to_object(closestEnnemy) < hearRange){
		IA.alarm[5] = IA.fearDuration;
		IA.fearObject =closestEnnemy;
	}
}

return IA.fearObject; // return wait make them fear