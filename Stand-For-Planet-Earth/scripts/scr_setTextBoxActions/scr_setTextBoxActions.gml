///scr_setTextBoxActions()

if (selected)
{
    if(txt == "")
    {
        if (!blink)
        {
            draw_text (x, y, string_hash_to_newline(txt));
        }
        else
        {
            draw_text (x, y, string_hash_to_newline(txt + "|"));
        }
    }
    else
    {
        if (!blink)
        {
            draw_text (x, y, string_hash_to_newline(txt));
        }
        else
        {
            draw_text (x, y, string_hash_to_newline(txt + "|"));
        }

    }
}
else
{
    if (txt == "")
    {
		switch self.object_index {
			case obj_textbox_port :	
				draw_text (x, y, string_hash_to_newline("Enter port"));
				break;
				
			case obj_textbox_ip :	
				draw_text (x, y, string_hash_to_newline("Enter IP"));
				break;
			
			case obj_textbox_pseudo :	
				draw_text (x, y, string_hash_to_newline("Pseudo : " + global.playerPseudo));
				break;
		}

    }
    else
    {
        if (!blink || !selected)
        {
			if(self.object_index == obj_textbox_pseudo){
				draw_text (x, y, string_hash_to_newline("Pseudo : " + txt));
			}else{
				draw_text (x, y, string_hash_to_newline(txt));
			}
        }
        else
        {
            draw_text (x, y, string_hash_to_newline(txt + "|"));
        }
    
    }
}