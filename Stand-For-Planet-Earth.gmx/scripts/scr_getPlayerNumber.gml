///scr_getPlayerNumber();
        
var playerNumber = 0;
var secondPlayer = false//instance_find (obj_player, 0);
var thirdPlayer = false //instance_find (obj_player, 1);
var forthPlayer = false //instance_find(obj_player, 2);
with (obj_player)
{
    if (self.playerNumber == 2) then secondPlayer = true
    if (self.playerNumber == 3) then thirdPlayer = true
    if (self.playerNumber == 4) then forthPlayer = true
}
if (secondPlayer == false)
{
    playerNumber = 2;
}
else if (thirdPlayer == false)
{
    playerNumber = 3;
}
else if (forthPlayer == false)
{
    playerNumber = 4;
}

return playerNumber;
