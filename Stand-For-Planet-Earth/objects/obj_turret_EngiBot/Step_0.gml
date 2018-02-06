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
	}
}
if(state == "reployed"){
	image_speed = -1;
	if(image_index <=0){
		currentHealth = 0;
		parent.currentEnergy += parent.energyCostForFire2/2;	
	}
}
if(level == 1 && state == "deployed"){
	image_index = 0;	
}
/*
if (deploy == true)
{
    image_angle = direction
    
    if (global.playerId == turretId)
    {
        targetNPC = scr_getTargetEnnemy(id,obj_localNpc);
        var behaviour = scr_getTurretBehaviour(id, targetNPC);
        switch(behaviour)
        {
            case "waiting":
                
                break;
            
            case "attack":
                ennemySpotted = true;
                
                if(alarm[2] <= 0) 
                {
                    for (var i = 0; i < shot1_bullet_count; i++) 
                    {
                        scr_createAndSendNewBullet(id, shot1_bullet_type, "hero",true)
                    } 
                    alarm[2] = shot1_delay;
                }
                break;
        }            
    }
}
    
*/
///set the destroy event
if (currentHealth <= 0)
{
    instance_destroy();
	parent.turret = noone;	
}

