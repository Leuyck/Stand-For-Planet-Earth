///scr_showNotification(text)
var text = argument[0]

//crée le chat
var chat = instance_create (x, y, obj_chat);
chat.text = text;
chat.notification = true;

//décale le chat verticalement
with (obj_chat)
{
    if(id != chat)
    {
        y -= 2 + string_height_ext(chat.text, -1, self.chatWidth - 10);
    }
} 
