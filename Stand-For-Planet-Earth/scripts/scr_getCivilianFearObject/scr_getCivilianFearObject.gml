///scr_getCivilianFearObject()
var IA = self.id

if(fear == false){
	scr_getCivilianFearObjectFromList(scaryObject);
	scr_getCivilianFearObjectFromList(scaryPeople);
}
if(fear == true){ //if afraid
	with(obj_localPlayer){ //fear if they see player
		if(distance_to_object(IA)<IA.viewRange && collision_line(IA.x,IA.y,self.x,self.y,obj_decor_base,false,true)==noone){
			IA.alarm[5] = IA.fearDuration;
			IA.fearObject =self.id
			if(ds_list_find_index(IA.scaryPeople, self.id)==-1){
				ds_list_add(IA.scaryPeople,self.id);
			}
		}
	}	
	var closestEnnemy = instance_nearest(IA.x,IA.y,obj_localPlayer);//fear if they hear player
	if(distance_to_object(closestEnnemy) < hearRange){
		IA.alarm[5] = IA.fearDuration;
		IA.fearObject =closestEnnemy;
	}
}

return IA.fearObject; // return what make them fear