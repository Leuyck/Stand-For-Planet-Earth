///draw text chat and box

draw_set_halign (fa_left);
draw_set_valign (fa_bottom);
draw_set_font (fnt_chat);

if (isTyping) 
{
    //draw the box
    draw_set_alpha (0.35)
    
    var xTop = margin;
    var yTop = boxPosition - margin;
    var xBot = boxWidth;
    var yBot = boxPosition - margin;
    
    
    if (string_height_ext(string_hash_to_newline("You : " + text), -1, boxWidth - padding) < boxHeight)
    {
        textbox = draw_rectangle_colour(xTop, yTop - boxHeight, xBot, yBot, c_gray, c_gray, c_gray, c_gray, true)
        textbox2 = draw_rectangle_colour(xTop, yTop - boxHeight, xBot, yBot, c_black, c_black, c_black, c_black, false)
    }
    else if (string_height_ext(string_hash_to_newline("You : " + text), -1, boxWidth - padding) >= boxHeight && 
             string_height_ext(string_hash_to_newline("You : " + text), -1, boxWidth - padding) < 2 * boxHeight)
    { 
        textbox = draw_rectangle_colour(xTop, yTop - 2 * boxHeight, xBot, yBot, c_gray, c_gray, c_gray, c_gray, true)
        textbox2 = draw_rectangle_colour(xTop, yTop - 2 * boxHeight, xBot, yBot, c_black, c_black, c_black, c_black, false)
    }
    else if (string_height_ext(string_hash_to_newline("You : " + text), -1, boxWidth - padding) <= 3 * boxHeight)
    {  
        textbox = draw_rectangle_colour(xTop, yTop - 3 * boxHeight, xBot, yBot, c_gray, c_gray, c_gray, c_gray, true)
        textbox2 = draw_rectangle_colour(xTop, yTop - 3 * boxHeight, xBot, yBot, c_black, c_black, c_black, c_black, false)
    }
    draw_set_alpha(1);

    //draw the text
    if (!blink)
    {
        draw_text_ext_colour (xTop, yTop, string_hash_to_newline("You : " + text), -1, boxWidth - padding, c_white, c_white, c_white, c_white,1);
    }
    else
    {
        draw_text_ext_colour (xTop, yTop, string_hash_to_newline("You : " + text + "|"), -1, boxWidth - padding, c_white, c_white, c_white, c_white,1);
    }
}

