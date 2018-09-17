/// @description 

audio_play_sound(snd_human_explosion,1,false);
var mortSprite = instance_create_depth(x,y,layer_get_depth("layer_murs")-1, obj_npc_mort);
mortSprite.parent = self.object_index;
mortSprite.image_angle = self.image_angle;
mortSprite.genre = genre;
	
if(instance_exists(obj_score)){
	if(object_get_parent(object_index) == obj_localNpc_civil) then obj_score.civilKilled++
	if(object_get_parent(object_index) == obj_localNpc_soldier) then obj_score.soldierKilled++
}
with(obj_lightCollisionCircle){
	if(self.parent == other.id){
		instance_destroy();	
	}
}