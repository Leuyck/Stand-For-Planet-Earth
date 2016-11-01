///scr_getHeroSpawn()
var playerNumber = argument[0]

var spawn;

if(playerNumber == 1) then spawn = obj_spawn1;
else if (playerNumber == 2) then spawn = obj_spawn2;
else if (playerNumber == 3) then spawn = obj_spawn3;
else spawn = obj_spawn4;

return spawn;
