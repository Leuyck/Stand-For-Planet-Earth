/// @description 
if(batteStoped){
	var color = make_color_rgb(209,0,254)
	if(object_index == obj_bullet_batte_d){
		scr_drawArrowTowardOutOfScreenObject(self.id,spr_batte_BatBot_hit_d_stopped,image_number-1,0,color);
	}else{
		scr_drawArrowTowardOutOfScreenObject(self.id,spr_batte_BatBot_hit_g_stopped,image_number-1,0,color);
	}
}