draw_self();
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

if (state="dashing"|| bump)
{
	scr_motionBlur(75,direction+180)
}

draw_text(x+100,y,string(currentEnergyRegen));
draw_text(x+100,y+50,string(linkTarget));