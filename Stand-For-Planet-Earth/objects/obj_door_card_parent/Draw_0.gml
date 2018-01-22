/// @description 

// Inherit the parent event
event_inherited();

var xText = x+lengthdir_x(80,image_angle-45)
var yText =  y+lengthdir_y(80,image_angle-45)
draw_set_font(fnt_3_large);

if(alerteMessage==2){
	var text="Press Use";
	var alreadyExists = false;
		if(instance_exists(obj_text_glitch)){
			with(obj_text_glitch){
				if(self.parent == other.id)	{
					if(self.text ==text){
						alreadyExists = true;
					}else{
						instance_destroy();	
					}
				}
			}
		}
		if(alreadyExists == false){
			var textGlitch = instance_create_depth(xText,yText,depth-10000,obj_text_glitch)
			textGlitch.text = text;
			textGlitch.font = fnt_3_large;
			textGlitch.color = c_yellow;
			textGlitch.outline = true;
			textGlitch.outlineSize = 1;
			textGlitch.outlineColor = c_black;
			textGlitch.parent = self.id
		}
}else if(alerteMessage == 1){
	if(cardToOpen=obj_card_purple){
		var text="Purple card needed";
		
		var alreadyExists = false;
		if(instance_exists(obj_text_glitch)){
			with(obj_text_glitch){
				if(self.parent == other.id)	{
					if(self.text ==text){
						alreadyExists = true;
					}else{
						instance_destroy();	
					}
				}
			}
		}
		if(alreadyExists == false){
			var textGlitch = instance_create_depth(xText,yText,depth-10000,obj_text_glitch)
			textGlitch.text = text;
			textGlitch.font = fnt_3_large;
			textGlitch.color = c_purple;
			textGlitch.outline = true;
			textGlitch.outlineSize = 1;
			textGlitch.outlineColor = c_black;
			textGlitch.parent = self.id
		}
	}else if(cardToOpen=obj_card_green){
		var text="Green card needed";

		var alreadyExists = false;
		if(instance_exists(obj_text_glitch)){
			with(obj_text_glitch){
				if(self.parent == other.id)	{
					if(self.text ==text){
						alreadyExists = true;
					}else{
						instance_destroy();	
					}
				}
			}
		}
		if(alreadyExists == false){
			var textGlitch = instance_create_depth(xText,yText,depth-10000,obj_text_glitch)
			textGlitch.text = text;
			textGlitch.font = fnt_3_large;
			textGlitch.color = c_green;
			textGlitch.outline = true;
			textGlitch.outlineSize = 1;
			textGlitch.outlineColor = c_black;
			textGlitch.parent = self.id
		}
	}
}else{
	if(instance_exists(obj_text_glitch)){
		with(obj_text_glitch){
			if(self.parent== other.id)	{
				self.destroy = true;
			}
		}
	}	
}