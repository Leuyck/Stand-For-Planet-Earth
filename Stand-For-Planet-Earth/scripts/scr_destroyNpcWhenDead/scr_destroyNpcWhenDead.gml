///scr_destroyNpcWhenDead()

if (currentHealth <= 0) 
{
    currentHealth = 0;
    with(obj_player)
    {
        buffer_seek(global.bufferServer, buffer_seek_start, 0);
        buffer_write (global.bufferServer, buffer_u8, C_NPC_DESTROY_MESSAGE);
        buffer_write (global.bufferServer, buffer_u32, other.npcId);
        network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
    }
	with(gridObject){
		instance_destroy();
	}
    instance_destroy()
}
