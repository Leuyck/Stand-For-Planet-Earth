/// @description 
audio_play_sound(snd_human_explosion,1,false);
var mortSprite = instance_create_depth(x,y,-(layer_get_depth(obj_mur_parent.depth)-1),obj_npc_mort);
mortSprite.parent =self.object_index;
mortSprite.image_angle = self.image_angle;
mortSprite.genre = genre;