/// scr_getLocaPlayerType(playerCharacter);
var playerCharacter = argument[0];

switch(playerCharacter)
{
    case "NanoBot":
        return obj_NanoBot;
    case "BadaBot" :
        return obj_BadaBot;
    case "EginBot":
        return obj_EginBot;
    case "RamBot":
        return obj_RamBot;
    case "PetBot":
        return obj_PetBot;
}
