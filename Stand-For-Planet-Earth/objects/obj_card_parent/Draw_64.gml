/// @description 
if(carryBy != noone){
	with(obj_healthBar){
		if(self.hero == other.carryBy){
			if(other.object_index == obj_card_green){
				var xpos = self.x+(150*display_get_gui_width())/1920;
				var ypos = self.y-(30*display_get_gui_height())/1080;
				draw_sprite_ext(other.sprite_index,other.image_index,xpos,ypos,0.5,0.5,0,c_white,1)
			}else if(other.object_index == obj_card_purple){
				var xpos = self.x+(170*display_get_gui_width())/1920;
				var ypos = self.y-(32*display_get_gui_height())/1080;
				draw_sprite_ext(other.sprite_index,other.image_index,xpos,ypos,0.5,0.5,0,c_white,1)
			}
		}
	}
}