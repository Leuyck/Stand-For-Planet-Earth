///set the IA

if (deploy == true)
{
    image_angle = direction
    speed = 0;
    
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
    


///set the destroy event
if (currentHealth == 0)
{
    instance_destroy()
}

