draw_set_valign (fa_middle);
draw_set_halign (fa_left);
draw_set_font (fnt_1);
draw_set_colour (c_white);

if(instance_exists(obj_server)) {
    draw_text (5,40, string_hash_to_newline("My Ping: " + string(ping)));
    draw_text (5,55, string_hash_to_newline("My pseudo: " + global.playerPseudo));
}
else {
    draw_text (5,25, string_hash_to_newline("My Ping: " + string(ping)));
    draw_text (5,40, string_hash_to_newline("My pseudo: " + global.playerPseudo));
}


