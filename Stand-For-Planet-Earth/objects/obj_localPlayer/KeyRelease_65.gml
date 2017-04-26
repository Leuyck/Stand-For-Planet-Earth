/// Toggle the link
/*
if(playerId == global.playerId)
{
    if(linkTarget == noone)
    {
        var targetAtMouse = instance_place(mouse_x, mouse_y, obj_localPlayer);
        if(targetAtMouse != noone && targetAtMouse != self)
        {
            linkTarget = targetAtMouse;
            
            buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
            buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_HEROS_LINKED);
            buffer_write(global.bufferNetwork, buffer_u8, global.playerId);
            buffer_write(global.bufferNetwork, buffer_u8, linkTarget.playerId);
            network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
        }
    }
    else
    {
        buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
        buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_HEROS_UNLINKED);
        buffer_write(global.bufferNetwork, buffer_u8, global.playerId);
        buffer_write(global.bufferNetwork, buffer_u8, linkTarget.playerId);
        network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
        
        linkTarget = noone;
    }
}

/* */
/*  */
