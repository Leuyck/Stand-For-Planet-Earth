/// image_index changed

if(image_index != previousImageIndex && buttonId == global.playerId)
{
    var character = ds_list_find_value(availableCharacters, image_index);
 
    buffer_seek  (global.bufferNetwork, buffer_seek_start, 0);
    buffer_write (global.bufferNetwork, buffer_u8, S_BROADCAST_PLAYER_CHANGE_CHARACTER_IN_CHOOSE_HERO_MENU_MESSAGE);
    buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
    buffer_write (global.bufferNetwork, buffer_string, character);
    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
    
    previousImageIndex = image_index;
}

///buttonId changed

if(previousButtonId != buttonId)
{
    // It is the button, I can change.
    if(buttonId == global.playerId)
    {
        previousButton = instance_create(x - 160, y, obj_btn_previous);        
        nextButton = instance_create (x + 160, y, obj_btn_next);
    }
    
    previousButtonId = buttonId;
}

