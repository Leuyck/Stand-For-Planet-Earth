///Server status
draw_set_colour (c_white);
draw_set_font (fnt_1);
draw_set_valign (fa_middle);
draw_set_halign (fa_left);
draw_text( 5, 10, string_hash_to_newline("Server Status: "+ string( socket >= 0) ) ); 
draw_text( 5, 25, string_hash_to_newline("Total Clients: "+ string( instance_number(obj_client)) ) );

