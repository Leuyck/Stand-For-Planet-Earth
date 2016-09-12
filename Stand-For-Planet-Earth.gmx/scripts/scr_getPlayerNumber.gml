///scr_getPlayerNumber();
        
var playerNumber = 0;
var firstPlayer = false;
var secondPlayer = false;
var thirdPlayer = false;
var forthPlayer = false;

with (obj_player)
{
    if (self.playerNumber == 1) then firstPlayer = true;
    if (self.playerNumber == 2) then secondPlayer = true;
    if (self.playerNumber == 3) then thirdPlayer = true;
    if (self.playerNumber == 4) then forthPlayer = true;
}

if (firstPlayer == false)
{
    playerNumber = 1;
}
else if (secondPlayer == false)
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
