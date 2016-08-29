/// scr_getLocaPlayerType(playerCharacter);
var playerCharacter = argument[0];

switch(playerCharacter)
{
    case "hero1":
        return obj_localPlayer_Hero1;
    case "hero2" :
        return obj_localPlayer_Hero2;
    case "hero3":
        return obj_localPlayer_Hero3;
    case "hero4":
        return obj_localPlayer_Hero4;
}
