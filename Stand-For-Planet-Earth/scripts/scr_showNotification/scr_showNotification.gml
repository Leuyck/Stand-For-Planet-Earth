///scr_showNotification(text, colour)
var text = argument[0]
var colour = argument[1];

//crée le chat
var chat = instance_create (x, y, obj_chat);
chat.text = text;
chat.colour = colour;
chat.notification = true;

//décale le chat verticalement
with (obj_chat)
{
    if(id != chat)
    {
        y -= 2 + string_height_ext(string_hash_to_newline(chat.text), -1, self.chatWidth - 10);
    }
} 
