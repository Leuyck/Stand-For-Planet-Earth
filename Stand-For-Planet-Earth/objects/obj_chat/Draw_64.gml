draw_set_font (fnt_3);
draw_set_colour (c_white);
draw_set_halign (fa_left);
draw_set_valign (fa_bottom);

if(!notification)
{
    draw_text_ext_colour (x, y, string_hash_to_newline(playerTalking + " : " + text), -1, chatWidth, colour, colour, colour, colour, alpha);
}
else
{
    draw_text_ext_colour (x, y, string_hash_to_newline(text), -1, chatWidth, colour, colour, colour, colour, alpha);
}

