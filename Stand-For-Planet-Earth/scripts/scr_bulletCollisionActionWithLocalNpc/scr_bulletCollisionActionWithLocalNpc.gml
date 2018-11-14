///scr_bulletCollisionActionWithLocalNpc(collideInstance);
var collideInstance = argument[0];

if(owner == "hero") {
	if(collideInstance.lastHitId == id) {
		return;	
	}
	
	switch(collideInstance.object_index) {
		case obj_npc_robot_shield:
			var angle = point_direction(collideInstance.x,collideInstance.y,x,y);
			if(abs(angle_difference(collideInstance.image_angle,angle))>140) {
				collideInstance.currentHealth -= damage;
				if(object_index == obj_bullet_BatBot){
					var dir = point_direction(x,y,collideInstance.x,collideInstance.y);
					var distance =  point_distance(x,y,collideInstance.x,collideInstance.y);
					var xx = x+lengthdir_x(distance,dir);
					var yy = y+lengthdir_y(distance,dir);
					var projectionAngle =35;

					scr_createBulletNPCImpactParticules(collideInstance,xx,yy,dir,projectionAngle);
					audio_play_sound(asset_get_index("snd_batBot_hitHuman"+string(choose(1,2,3))),1,false)
				}else{
					var projectionAngle =35;
					scr_createBulletNPCImpactParticules(collideInstance,x,y,direction,projectionAngle);
					instance_destroy();
				}
			}else {
				if(object_index == obj_bullet_BatBot){
					var dir = point_direction(x,y,collideInstance.x,collideInstance.y);
					var distance =  point_distance(x,y,collideInstance.x,collideInstance.y);
					var xx = x+lengthdir_x(distance,dir);
					var yy = y+lengthdir_y(distance,dir);
					var projectionAngle =35;

					scr_createBulletNPCImpactParticules(collideInstance,xx,yy,dir,projectionAngle);
					if(impactSoundPlayed == false){
						if(audio_is_playing(snd_batBot_hitRobot1)) then audio_stop_sound(snd_batBot_hitRobot1);
						if(audio_is_playing(snd_batBot_hitRobot2)) then audio_stop_sound(snd_batBot_hitRobot2);
						if(audio_is_playing(snd_batBot_hitRobot3)) then audio_stop_sound(snd_batBot_hitRobot3);
						audio_play_sound(asset_get_index("snd_batBot_hitRobot"+string(choose(1,2,3))),1,false);
						impactSoundPlayed = true;
					}
				}else{
					var projectionAngle =35;
					scr_createBulletNPCImpactParticules(collideInstance,x,y,direction,projectionAngle);
					instance_destroy();	
				}
			}
			break;

			default:
			if(object_index == obj_bullet_BatBot){
				if(!collision_line(bulletFrom.x,bulletFrom.y,collideInstance.x,collideInstance.y,obj_mur_parent,false,true)){
					var dir = point_direction(x,y,collideInstance.x,collideInstance.y);
					var distance =  point_distance(x,y,collideInstance.x,collideInstance.y);
					var xx = x+lengthdir_x(distance,dir);
					var yy = y+lengthdir_y(distance,dir);
					var projectionAngle =35;

					scr_createBulletNPCImpactParticules(collideInstance,xx,yy,dir,projectionAngle);
					audio_play_sound(asset_get_index("snd_batBot_hitHuman"+string(choose(1,2,3))),1,false);
					if(collideInstance.invulnerable == false){
						collideInstance.currentHealth -= damage;
					}
				}
				
			}else{
				var projectionAngle = 30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
				scr_createBulletNPCImpactParticules(collideInstance,x,y,direction,projectionAngle);	
				if(object_index == obj_bullet_EngiBot) {
					action_bounce(1, 1);
					speed = speed/4	
				}else {
					instance_destroy();	
				}
				if(collideInstance.invulnerable == false){
					collideInstance.currentHealth -= damage;
				}
			}
			
			break;
	}

	collideInstance.lastHitId = id;
	if(createDot) then scr_giveDotTo(other.id);	
}
