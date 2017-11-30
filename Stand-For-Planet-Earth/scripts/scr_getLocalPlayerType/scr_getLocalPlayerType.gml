/// scr_getLocalPlayerType(playerCharacter);
var playerCharacter = argument[0];

switch(playerCharacter)
{
    case "NanoBot":
        return obj_NanoBot;
    case "BadaBot" :
        return obj_BadaBot;
    case "EginBot":
        return obj_EngiBot;
    case "RamBot":
        return obj_RamBot;
    case "PetBot":
        return obj_PetBot;
    case "BatBot":
        return obj_BatBot;
	case "RoomCreator":
        return obj_RoomCreator;
}
