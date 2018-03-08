///scr_setLink();

/// Toggle the link
if(controller.linkKey && deployed && !dashing && state!="dead" && resurectAllie == noone){
	if(linkTarget == noone){
		var instance = scr_getClosestInstanceInFront(obj_localPlayer);
		if(instance != noone){
			if(distance_to_object(instance)<=linkDistanceMax){
				linkTarget = instance
				if(ds_list_find_index(linkTarget.linkedHeros,self.id) == -1){
					ds_list_add(linkTarget.linkedHeros,self.id);
				}
				
			}
		}
	}else{
		if(distance_to_object(linkTarget)>linkDistanceMax){
			var posInList =ds_list_find_index(linkTarget.linkedHeros,self.id)
			ds_list_delete(linkTarget.linkedHeros,posInList);
			linkTarget = noone;	
		}
	}
}else{
	if(linkTarget !=noone){
		var posInList =ds_list_find_index(linkTarget.linkedHeros,self.id)
		ds_list_delete(linkTarget.linkedHeros,posInList);
		linkTarget = noone;	
	}
}
	
	
	
	
	
	
	
	
	
	
	
//keyboard_clear(bindLink);
//	if(playerId == global.playerId)
//	{
//	    if(linkTarget == noone)
//	    {
//	        var targetAtMouse = instance_place(mouse_x, mouse_y, obj_localPlayer);
//	        if(targetAtMouse != noone && targetAtMouse != self)
//	        {
//	            linkTarget = targetAtMouse;
            
//	            buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
//	            buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_HEROS_LINKED);
//	            buffer_write(global.bufferNetwork, buffer_u8, global.playerId);
//	            buffer_write(global.bufferNetwork, buffer_u8, linkTarget.playerId);
//	            network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
//	        }else{
//				scr_showNotification("No Target for Link", c_red);
//			}
//	    }
//	    else
//	    {
//	        buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
//	        buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_HEROS_UNLINKED);
//	        buffer_write(global.bufferNetwork, buffer_u8, global.playerId);
//	        buffer_write(global.bufferNetwork, buffer_u8, linkTarget.playerId);
//	        network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
        
//	        linkTarget = noone;
//	    }
		
//	}

