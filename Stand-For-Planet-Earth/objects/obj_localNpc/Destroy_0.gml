/// @description 
audio_play_sound(snd_human_explosion,1,false);
var mortSprite = instance_create_layer(x,y,layer,obj_npc_mort);
mortSprite.parent =self.object_index;
mortSprite.image_angle = self.image_angle;
mortSprite.genre = genre;


with(gridObject){
	instance_destroy();	
}
ds_list_destroy(patrolRectangle);