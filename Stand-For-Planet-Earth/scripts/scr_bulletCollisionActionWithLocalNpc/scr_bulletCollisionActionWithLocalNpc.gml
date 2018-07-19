///scr_bulletCollisionActionWithLocalNpc(collideInstance);
var collideInstance = argument[0];

if(owner == "hero"){
		var projectionAngle =30-((point_distance(xOrigin,yOrigin,x,y)/1000)*30)+5;
		scr_createBulletNPCImpactParticules(collideInstance,x,y,direction,projectionAngle);	
				
		if(collideInstance.lastHitId != id){
			collideInstance.currentHealth -= damage;
			collideInstance.lastHitId = id;
		}
			
		if(createDot) then scr_giveDotTo(other.id);
			
				
		if(object_index != obj_bullet_EngiBot || object_index != obj_bullet_BatBot){
			instance_destroy();
		}else if(object_index == obj_bullet_BatBot){
			audio_play_sound(snd_batBot_hitHuman,1,false)
		}else if(object_index == obj_bullet_EngiBot){
			action_bounce(1, 1);
			speed = speed/4	
		}
			
}
