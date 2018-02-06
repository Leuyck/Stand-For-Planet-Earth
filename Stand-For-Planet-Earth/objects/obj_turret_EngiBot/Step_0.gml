///set the IA
image_angle = direction;
if(state == "lanch"){
	speed = lerp(speed,speed-4,0.5);
	if(speed <=0){
		speed = 0;	
		state = "deployement"
	}
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
		parent.currentEnergy += parent.energyCostForFire2/2;	
	}
}
if(state == "deployed"){
	image_index = level -1;
	fieldOfView = 90*level;
	
    targetNPC = scr_getTargetEnnemyForTurret();
    var behaviour = scr_getTurretBehaviour(id, targetNPC);
    switch(behaviour)
    {
        case "waiting":
              
            break;			
            
        case "attack":
            ennemySpotted = true;
			if (instance_exists(targetNPC) && distance_to_point(targetNPC.x,targetNPC.y) <= attack_range &&ennemySpotted == true)
	        {
	            var targetDirection = point_direction(x,y,targetNPC.x,targetNPC.y)
            
	            if (angle_difference(direction,targetDirection)>frict){
	                direction -= frict
	            }else if (angle_difference(direction, targetDirection)<-frict){
	                direction += frict
	            }else{
					direction = targetDirection;
					if(alarm[2] <= 0){
		                for (var i = 0; i < shot1_bullet_count; i++){
		                    scr_createAndSendNewBullet(id, shot1_bullet_type, "hero",true)
		                } 
		                alarm[2] = room_speed/shot1PerSec;
		            }
				}
	        }
            break;
    }            
   
	if(countdown ==noone){
		 countdown = instance_create_depth(x,y,depth+1,obj_circularCountDown);
		 countdown.yOffset =75;
		 countdown.duration =aliveDuration;
		 countdown.parent = id;
	}
}
    

///set the destroy event
if (currentHealth <= 0)
{
    instance_destroy();
	parent.turret = noone;
}

