/// @description 
if(batteStoped){
	if(object_index == obj_bullet_batte_d){
		scr_drawArrowTowardOutOfScreenObject(self.id,spr_batte_BatBot_hit_d_stopped,image_number-1);
	}else{
		scr_drawArrowTowardOutOfScreenObject(self.id,spr_batte_BatBot_hit_g_stopped,image_number-1);
	}
}