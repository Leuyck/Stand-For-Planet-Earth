/// @description scr_otherBarImageIndex();

if(self.hero.object_index == obj_PetBot) {
	with(obj_PetDrone){
		if(self.parent == other.hero.id){
			var percentOfFuel = (self.currentTankFuel*100)/self.tankSpace;
			if(round(((sprite_get_number(spr_healthBar_redCross)-1)*percentOfFuel)/100)>=other.otherBarImageIndex)
			{
				other.otherBarImageIndex+=0.2;
			}
			else if (round(((sprite_get_number(spr_healthBar_redCross)-1)*percentOfFuel)/100)<=other.otherBarImageIndex)
			{
				other.otherBarImageIndex-=0.2;
			}
			if(other.otherBarImageIndex > sprite_get_number(spr_healthBar_redCross)-1) then other.otherBarImageIndex= sprite_get_number(spr_healthBar_redCross)-1;
			if(other.otherBarImageIndex < 0) then other.otherBarImageIndex = 0;
		}
	}
	
}