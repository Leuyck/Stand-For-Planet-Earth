/// @description Insert description here
// You can write your code in this editor
if(global.inWorld){
	if(instanceSelected != false){
		if(instanceSelected.object_index ==obj_lumiere){
			draw_text(5,380,"TAB for more incrementation speed");
			draw_text(5,400,"MouseWheel for radius("+string(instanceSelected.radius)+")");
			draw_text(5,420,"1 + MouseWheel for HUE (add some saturation first) ("+string(color_get_hue(instanceSelected.image_blend))+")");
			draw_text(5,440,"2 + MouseWheel for Saturation ("+string(color_get_saturation(instanceSelected.image_blend))+")");
			draw_text(5,460,"3 + MouseWheel for Intensity("+string(instanceSelected.lightIntensity)+")");
		
		}else if(instanceSelected.object_index ==obj_spriteResizer){
			draw_text(5,380,"TAB for more incrementation speed");
			draw_text(5,400,"MouseWheel for resize");
			draw_text(5,420,"CTRL + MouseWheel for rotation ("+string(instanceSelected.image_angle)+")");
			draw_text(5,440,"SHIFT + MouseWheel for other Subimage ("+string(instanceSelected.image_index)+")");
		}else{
			draw_text(5,380,"MouseWheel for resize");
			draw_text(5,400,"CTRL + MouseWheel for rotation ("+string(instanceSelected.image_angle)+")");
		}
	}else{
		draw_text(5,380,"Exemple : create obj_lumiere");
		draw_text(5,400,"Exemple : resize spr_wall");
	}
}