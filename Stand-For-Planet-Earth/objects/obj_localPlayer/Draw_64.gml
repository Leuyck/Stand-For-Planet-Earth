/// @description 
if(state =="dead" && image_index == image_number-1){
	scr_drawArrowTowardOutOfScreenObject(self.id,asset_get_index("spr_"+string_copy(object_get_name(object_index),5,10)+"_pointingArrow"),image_number-1,image_angle,mainColor);	
}