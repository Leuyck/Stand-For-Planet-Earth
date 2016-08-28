///scr_createAndMoveChat(text, playerName, owner)

var text = argument[0]
var playerName = argument[1]
//var owner = argument[2]

var chat = instance_create (x, y, obj_chat);//crée le chat
chat.text = text;
chat.playerTalking = playerName;
//chat.owner = owner.id;

if (instance_exists (obj_chat))//décale le chat verticalement
{
    with (obj_chat)
    {
        if(id != chat)
        {
            y -=2+string_height_ext(chat.text, -1, 390)
        }
    } 
}
