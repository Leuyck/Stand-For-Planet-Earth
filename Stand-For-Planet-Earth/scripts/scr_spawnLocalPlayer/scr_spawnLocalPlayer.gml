///scr_spawnLocalPlayer();
with(obj_controller_parent){
	if(self.heroSelected !=noone){
		var spawn = scr_getHeroSpawn(self.playerNumber);
		var player = instance_create_depth(spawn.x,spawn.y,0,self.heroSelected)
		player.playerNumber = self.playerNumber;
		player.controller = self.id;
		var healthBar = scr_createHealthBar(player.playerNumber);
		healthBar.hero = player;
	}
}