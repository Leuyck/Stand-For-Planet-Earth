///scr_duplicateFire2SpriteBadaBot();

spriteFire2 = sprite_duplicate(spr_BadaBot_fire2);
sprite_set_offset(spriteFire2, 158, 133);
sprite_collision_mask(spriteFire2,false,2,158-44,133-44,158+44,133+44,2,0)
with(obj_aimLaser){
	if(self.hero == other.id){
		ds_list_add(spriteAvailableForLaser,other.spriteFire2)
		laserCoordinates[other.spriteFire2,0] = "174,132,154,132";
		laserCoordinates[other.spriteFire2,1] = "193,132,173,132";
		laserCoordinates[other.spriteFire2,2] = "193,132,173,132";
		laserCoordinates[other.spriteFire2,3] = "181,132,161,132";
	}
}

return spriteFire2;