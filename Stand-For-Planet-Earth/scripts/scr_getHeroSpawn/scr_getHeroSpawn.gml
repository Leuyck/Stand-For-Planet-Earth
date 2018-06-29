///scr_getHeroSpawn()
var playerNumber = argument[0]
var spawn;

with(asset_get_index("obj_spawn"+string(playerNumber))){
	if(self.spawnNumber == obj_spawner.spawnNumber)	{
		spawn = self.id;	
	}
}

return spawn;