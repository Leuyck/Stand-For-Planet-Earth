draw_self();

if(DEBUG) 
{
    draw_set_alpha(0.5);
    draw_set_color(c_blue);
    draw_circle(x, y, detectionRange, true);
    draw_set_alpha(1);
}

