///scr_getCivilianFearObject(IA)
var IA=argument[0]
var fearObject = noone;

if(fear == false){
	with(obj_bullet_base){
		if(collision_line(IA.x, IA.y, obj_bullet_base.x, obj_bullet_base.y, obj_decor_base, false, true)==noone){
			IA.fear = true;
			IA.alarm[5]=IA.fearDuration;
			fearObject = self.id;
		}
	}

	with(obj_localNpc){
		if(state =="dead"){
			if(collision_line(IA.x, IA.y, self.x, self.y, obj_decor_base, false, true)==noone){
				IA.fear = true
				IA.alarm[5]=IA.fearDuration;
				fearObject = self.id;
			}
		}
	}
}else if(fear == true){
	with(obj_localPlayer){
		if(collision_line(IA.x,IA.y,self.x,self.y,obj_decor_base,false,true)==noone){
			IA.fear = true
			IA.alarm[5]=IA.fearDuration;
			fearObject =self.id
		}
	}	
	var closestEnnemy = instance_nearest(IA.x,IA.y,obj_localPlayer);
	if(distance_to_object(closestEnnemy) < hearRange){
		IA.fear = true
		IA.alarm[5]=IA.fearDuration;
		fearObject =self.id
	}
}

return fearObject;