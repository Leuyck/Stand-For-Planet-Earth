/// draw Fade

fadeAlpha = clamp (fadeAlpha + ( fadeState * fadeSpeed), 0, 1);
if (fadeAlpha == 1) 
{
    room_goto(tempTarget);
    fadeState = -1;
}

if ((fadeAlpha == 0) && (fadeState == -1))
{
    instance_destroy();
}
draw_set_color (c_white);
draw_set_alpha (fadeAlpha);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_set_alpha(1)

