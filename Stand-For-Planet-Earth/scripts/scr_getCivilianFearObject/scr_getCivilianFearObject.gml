///scr_getCivilianFearObject(IA)
var IA=argument[0]

if(fear == false){
	with(obj_bullet_base){
		if(collision_line(IA.x, IA.y, obj_bullet_base.x, obj_bullet_base.y, obj_decor_base, false, true)==noone){
			IA.fear = true;
			IA.fearObject = self.id;
			IA.alarm[5] = IA.fearDuration;
			with(other){
			path_end()
			}
		}
	}

	with(obj_localNpc){
		if(state =="dead"){
			if(collision_line(IA.x, IA.y, self.x, self.y, obj_decor_base, false, true)==noone){
				IA.fear = true
				IA.fearObject = self.id;
				IA.alarm[5] = IA.fearDuration;
				with(other){
				path_end();
				}
			}
		}
	}
	for(var i = 0; i<ds_list_size(peopleFeared);i++){
		var people = ds_list_find_value(peopleFeared,i);
		with (people){
			if(collision_line(IA.x,IA.y,self.x,self.y,obj_decor_base,false,true)==noone){
				if(distance_to_object(IA)<IA.viewRange){
					IA.fear = true
					IA.alarm[5] = IA.fearDuration;
					IA.fearObject =self.id
				}
			}
		}
	}
}else if(fear == true){
	with(obj_localPlayer){
		if(collision_line(IA.x,IA.y,self.x,self.y,obj_decor_base,false,true)==noone){
			if(distance_to_object(IA)<IA.viewRange){
				IA.fear = true
				IA.alarm[5] = IA.fearDuration;
				IA.fearObject =self.id
				if(ds_list_find_index(IA.peopleFeared, self.id)==-1){
					ds_list_add(IA.peopleFeared,self.id);
				}
			}
		}
	}	
	var closestEnnemy = instance_nearest(IA.x,IA.y,obj_localPlayer);
	if(distance_to_object(closestEnnemy) < hearRange){
		IA.fear = true
		IA.alarm[5] = IA.fearDuration;
		IA.fearObject =closestEnnemy;
	}
}

return IA.fearObject;