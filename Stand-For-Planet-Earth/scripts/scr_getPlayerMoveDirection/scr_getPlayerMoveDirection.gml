///scr_getPlayerMoveDirection()

var hspd = rightKey-leftKey;
var vspd = downKey-upKey;
var dir = 0;

if hspd == 1 && vspd == 0 then dir = 0;
if hspd == 0 && vspd == -1 then dir = 90;
if hspd == -1 && vspd == 0 then dir = 180;
if hspd == 0 && vspd == 1 then dir = 270;

if hspd == 1 && vspd == -1 then dir = 45;
if hspd == -1 && vspd == -1 then dir = 45 + 90;
if hspd == -1 && vspd == 1 then dir = 45 + 90*2;
if hspd == 1 && vspd == 1 then dir = 45 + 90*3;

return dir;
