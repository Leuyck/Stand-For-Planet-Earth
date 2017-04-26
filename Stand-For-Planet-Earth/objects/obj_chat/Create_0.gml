///init
margin = 3;
x = 5;
if(instance_exists(obj_chatTyping))
{
    y = ((display_get_gui_height()/5)*4) - obj_chatTyping.boxHeight - 2 * obj_chatTyping.margin;
}
else
{
    y = ((display_get_gui_height()/5)*4)-margin-25;
}

notification = false
text = "";
playerTalking = ""
colour = c_white;
alpha = 1
chatWidth = 400;
displayTime = 5;
fadeOutTime = 2;

// timer sto destroy the message
alarm[0] = room_speed * displayTime;
alarm[1] = -1;

