/// @description 
if(carryBy != noone){
	with(obj_persoBar){
		if(self.hero == other.carryBy){
			if(other.object_index == obj_card_green){
				var xpos = self.x+100;
				var ypos = self.y-50;
				draw_sprite_ext(other.sprite_index,other.image_index,xpos,ypos,0.5,0.5,0,c_white,1)
			}else if(other.object_index == obj_card_purple){
				var xpos = self.x+120;
				var ypos = self.y-52;
				draw_sprite_ext(other.sprite_index,other.image_index,xpos,ypos,0.5,0.5,0,c_white,1)
			}
		}
	}
}