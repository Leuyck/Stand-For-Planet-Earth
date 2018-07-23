/// @description 

audio_play_sound(snd_human_explosion,1,false);
var mortSprite = instance_create_depth(x,y,-(layer_get_depth(obj_mur_parent.depth)-1), obj_npc_mort);
mortSprite.parent = self.object_index;
mortSprite.image_angle = self.image_angle;
mortSprite.genre = genre;
	
if(genre == "robot"){
	var alreadyExists = false;
	with(obj_explosion_robot){
		if(self.parent == other.id){
			alreadyExists = true;	
			if(self.image_index >4){
				with(other){
					instance_destroy();	
				}
			}
		}
	}
	if(!alreadyExists){
		var explosion = instance_create_depth(x, y, depth-2, obj_explosion_robot);	
		explosion.parent = self.id;
	}
}