///scr_createDisabledHerosOnSpawnVehicle();
with(obj_controller_parent){
	if(self.heroSelected !=noone){
		var angle;
		switch self.playerNumber{
			case 1 : 
				angle = image_angle+45;
				break;
			case 2 :
				angle = image_angle -45;
				break;
			case 3:
				angle = image_angle + 135;
				break;
			case 4 :
				angle = image_angle - 135;
				break;
		}
		
		var spawnX =other.x+lengthdir_x(30,angle);
		var spawnY = other.x+lengthdir_y(30,angle);
		
		var player = instance_create_depth(spawnX,spawnY,other.depth+1,self.heroSelected)
		player.playerNumber = self.playerNumber;
		player.controller = self.id;
		player.onSpawnVehicle = true;
		player.image_xscale = image_xscale;
		player.image_yscale = image_yscale;
		var healthBar = scr_createHealthBar(player.playerNumber);
		healthBar.hero = player;
	}
}