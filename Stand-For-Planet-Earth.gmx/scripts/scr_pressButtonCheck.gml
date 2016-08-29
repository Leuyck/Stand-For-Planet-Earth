///scr_pressButtonCheck(button)
var button = argument[0]
if (useKey)
{ 
    var btn = instance_place(x, y, button);
    if (btn != noone)
    {                     
        buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
        buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_PRESS_BUTTON_MESSAGE);
        buffer_write(global.bufferNetwork, buffer_u8, btn.buttonId);
        network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
    }
}
