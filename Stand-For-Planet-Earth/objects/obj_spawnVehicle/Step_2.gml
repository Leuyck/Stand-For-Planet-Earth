/// @description 
//if(usedAsHeroDrop){
//	with(obj_localPlayer){
//		if(self.onSpawnVehicle){
//			var dist = other.image_xscale * point_distance(sprite_get_xoffset(other.sprite_index),sprite_get_yoffset(other.sprite_index),other.spawn[self.playerNumber,0],other.spawn[self.playerNumber,1]);
//			var angle = other.image_angle  + point_direction(sprite_get_xoffset(other.sprite_index),sprite_get_yoffset(other.sprite_index),other.spawn[self.playerNumber,0],other.spawn[self.playerNumber,1]);
//			self.x = other.x+lengthdir_x(dist,angle);
//			self.y = other.y+lengthdir_y(dist,angle);
//			self.image_angle = other.image_angle-sign(power(-1,self.playerNumber))*90
//			self.image_xscale = other.image_xscale;
//			self.image_yscale = other.image_yscale;
//		}
//	}
//}