if (isTyping)
{
    if (text != "")
    {
        isTyping = false;
        scr_createAndMoveChat(text, c_white, "You");
        scr_consoleMessage()
        scr_sendChatText(text);
        text = "";
    }
    else
    {
        isTyping = false;
    }
}
else
{
    keyboard_string = text;
    isTyping = true;
    alarm[0] = room_speed * 1;
}


