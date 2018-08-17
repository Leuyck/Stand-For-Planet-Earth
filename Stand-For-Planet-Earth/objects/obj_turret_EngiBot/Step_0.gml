///set the IA

if(state == "lanch"){
	speed = lerp(speed,speed-4,0.5);
	if(speed <=0){
		speed = 0;	
		state = "deployement"
	}
}else{
	speed=0;	
}

if(state == "deployement"){
	image_speed = 1;
	if(image_index >= image_number-1){
		state = "deployed";
		sprite_index = spr_turet;
		image_speed = 0;
		baseAnglePosition = image_angle;
	}
}
if(state == "reployed"){
	image_speed = -1;
	if(countdown !=noone){
		with(countdown){
			instance_destroy();	
		}
	}
	if(image_index <=0){
		currentHealth = 0;
	}
}
if(state == "deployed"){
	image_index = level -1;
	fieldOfView = 90*level;
	
    targetNPC = src_getTheNearestVisibleEnnemyForTurret();
    var behaviour = scr_getTurretBehaviour(id, targetNPC);
    switch(behaviour)
    {
        case "waiting":
            break;			
            
        case "attack":
			if (instance_exists(targetNPC) && distance_to_point(targetNPC.x,targetNPC.y) <= attack_range){
	            var targetDirection = point_direction(x,y,targetNPC.x,targetNPC.y)
            
	            if (angle_difference(image_angle,targetDirection)>frict){
	                image_angle -= frict
	            }else if (angle_difference(image_angle, targetDirection)<-frict){
	                image_angle += frict
	            }else{
					image_angle = targetDirection;
					if(alarm[2] <= 0){
		                for (var i = 0; i < shot1_bullet_count; i++){
		                    scr_createAndSendNewBullet(id, shot1_bullet_type, "hero",true)
							audio_play_sound(snd_petBot_fire1,1,false)
		                } 
		                alarm[2] = room_speed/shot1PerSec;
		            }
				}
	        }
			break;
	}
}
    

///set the destroy event
if (currentHealth <= 0)
{
    instance_destroy();
	if(parent.turret == self.id){
		parent.turret = noone;	
	}
}