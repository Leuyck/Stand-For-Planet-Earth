/// Send npc position to other players
if(instance_exists(obj_server))
{
    with(obj_player)
    {
        buffer_seek(global.bufferServer, buffer_seek_start, 0);
        buffer_write (global.bufferServer, buffer_u8, C_NPC_MOVE_MESSAGE);
        buffer_write (global.bufferServer, buffer_u32, other.npcId);
        buffer_write (global.bufferServer, buffer_f32, other.x);
        buffer_write (global.bufferServer, buffer_f32, other.y);
        buffer_write (global.bufferServer, buffer_string, object_get_name(other.object_index));
        buffer_write (global.bufferServer, buffer_f32, other.direction);
        buffer_write (global.bufferServer, buffer_u8, other.speed);
        buffer_write (global.bufferServer, buffer_u32, other.sprite_index);
        buffer_write (global.bufferServer, buffer_u8, other.image_index);
        buffer_write (global.bufferServer, buffer_u32, other.currentHealth);
        network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
    }
    alarm[2] = 1;
}

