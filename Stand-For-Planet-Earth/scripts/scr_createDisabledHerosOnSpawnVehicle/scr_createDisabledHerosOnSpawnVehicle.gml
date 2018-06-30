///scr_createDisabledHerosOnSpawnVehicle();
with(obj_controller_parent){
	if(self.heroSelected !=noone){		
		var dist = other.image_xscale * point_distance(sprite_get_xoffset(other.sprite_index),sprite_get_yoffset(other.sprite_index),other.spawn[self.playerNumber,0],other.spawn[self.playerNumber,1]);
		var angle = other.image_angle  + point_direction(sprite_get_xoffset(other.sprite_index),sprite_get_yoffset(other.sprite_index),other.spawn[self.playerNumber,0],other.spawn[self.playerNumber,1]);
		spawnX = other.x+lengthdir_x(dist,angle);
		spawnY = other.y+lengthdir_y(dist,angle);
		
		var player = instance_create_depth(spawnX,spawnY,0,self.heroSelected)
		player.playerNumber = self.playerNumber;
		player.controller = self.id;
		player.onSpawnVehicle = true;
		player.image_xscale = other.image_xscale;
		player.image_yscale = other.image_yscale;
		var healthBar = scr_createHealthBar(player.playerNumber);
		healthBar.hero = player;
	}
}