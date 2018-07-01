///scr_destroyNpcWhenDead()

if (currentHealth <= 0) 
{
    currentHealth = 0;
	normalSpd = 0;
	speed = 0
	path_end();
    //with(obj_player)
    //{
    //    buffer_seek(global.bufferServer, buffer_seek_start, 0);
    //    buffer_write (global.bufferServer, buffer_u8, C_NPC_DESTROY_MESSAGE);
    //    buffer_write (global.bufferServer, buffer_u32, other.npcId);
    //    network_send_packet (self.playerSocket, global.bufferServer, buffer_tell(global.bufferServer));
    //}
	
	
	
	if(genre == "robot"){
		var alreadyExists = false;
		with(obj_explosion_robot){
			if(self.parent == other.id){
				alreadyExists = true;	
				if(self.image_index >4){
					with(other){
						instance_destroy();	
					}
				}
			}
		}
		if(!alreadyExists){
			var explosion = instance_create_depth(x,y,depth-2,obj_explosion_robot);	
			explosion.parent = self.id;
		}
	}else{
		instance_destroy()
	}
}
