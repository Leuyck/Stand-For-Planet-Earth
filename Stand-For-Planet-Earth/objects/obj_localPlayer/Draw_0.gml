draw_self();

if (global.playerId != self.playerId)
{
    draw_set_font (fnt_3);
    draw_set_colour (c_red);
    
    draw_text (x, y-25, string_hash_to_newline(string(playerId)));
    draw_text (x, y-50, string_hash_to_newline(string(playerName)));
}

if(linkTarget != noone)
{
    var weight = linkWeightMin + (linkWeightMax - linkWeightMin) * linkPower;

    var alpha = draw_get_alpha();
    draw_set_alpha(0.8);
    draw_set_color(externalLinkColor);
    draw_line_width(x, y, linkTarget.x, linkTarget.y, weight);
    draw_set_color(internalLinkColor);
    draw_line_width(x, y, linkTarget.x, linkTarget.y, weight * internalLinkRatio);
    draw_set_alpha(alpha);
}

