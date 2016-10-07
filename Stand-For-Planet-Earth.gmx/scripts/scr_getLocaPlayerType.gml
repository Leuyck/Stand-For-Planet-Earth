/// scr_getLocaPlayerType(playerCharacter);
var playerCharacter = argument[0];

switch(playerCharacter)
{
    case "NanoBot":
        return obj_NanoBot;
    case "BadaBot" :
        return obj_BadaBot;
    case "EngiBot":
        return obj_EngiBot;
    case "RamBot":
        return obj_RamBot;
}
