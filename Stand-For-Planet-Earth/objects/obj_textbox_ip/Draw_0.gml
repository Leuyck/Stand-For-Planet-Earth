event_inherited();

if (selected)
{
    if(txt == "")
    {
        if (!blink)
        {
            draw_text (x, y, string_hash_to_newline(txt));
        }
        else
        {
            draw_text (x, y, string_hash_to_newline(txt + "|"));
        }
    }
    else
    {
        if (!blink)
        {
            draw_text (x, y, string_hash_to_newline(txt));
        }
        else
        {
            draw_text (x, y, string_hash_to_newline(txt + "|"));
        }

    }
}
else
{
    if (txt == "")
    {
        draw_text (x, y, string_hash_to_newline("Enter IP"));
    }
    else
    {
        if (!blink || !selected)
        {
            draw_text (x, y, string_hash_to_newline(txt));
        }
        else
        {
            draw_text (x, y, string_hash_to_newline(txt + "|"));
        }
    
    }
}
global.IPAddress = txt;


