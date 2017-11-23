draw_set_colour(make_colour_rgb (183, 224, 31));
draw_set_font(fnt_gui)
draw_set_halign (fa_right);

draw_text (display_get_gui_width(), 20, string_hash_to_newline("FPS : " + string (fps)));

if(global.inWorld)
{
    if(instance_exists(obj_localPlayer))
    {
        //draw_text (display_get_gui_width(), 40, string_hash_to_newline("Joueur numero : " + string (global.playerNumber)));
        //draw_text (display_get_gui_width(), 60, string_hash_to_newline("PlayerId : " + string (global.playerId)));
        draw_text (display_get_gui_width(), 80, string_hash_to_newline("state : " + string (obj_localPlayer.state)));
        draw_text (display_get_gui_width(), 100, string_hash_to_newline("direction : " + string (obj_localPlayer.direction)));
    }
    draw_text (display_get_gui_width(), 120, string_hash_to_newline("Number of NPC : " + string (instance_number(obj_localNpc))));
    draw_text (display_get_gui_width(), 140, string_hash_to_newline("Number of heros : " + string (instance_number(obj_localPlayer))));
	
	draw_text (display_get_gui_width(), 160, string_hash_to_newline("hJoystick : " + string (gamepad_axis_value(0,gp_axislh))));
    draw_text (display_get_gui_width(), 180, string_hash_to_newline("vjoystick : " + string (gamepad_axis_value(0,gp_axislv))));
    
}

