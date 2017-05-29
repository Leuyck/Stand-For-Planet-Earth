if (isTyping)
{
    if (string_width (string_hash_to_newline(keyboard_string)) < maxTextLength)
    {
        text = keyboard_string;
    }
    else 
    {
        keyboard_string = text;
    }
}

