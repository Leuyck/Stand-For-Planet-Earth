///scr_fireCheck(obj_hero, obj_bullet)

// If we are firing
var hero = argument[0]
var bullet = argument[1]

if (global.character = "hero1" || global.character = "hero2")
{
    if(fire1 && alarm[0] <= 0)
    {
        state = "firing";
     
        scr_createAndSendNewBullet(hero, bullet);
        alarm[0] = shot1_delay
        
        if (alarm[0] >10)
        {
            state= "firing";
        }
    
    }
}
else if (global.character = "hero3" || global.character = "hero4")
{
    if(fire1 && alarm[0] <= 0)
    {
        state = "firing";
        for (var i = 0; i<4; i++)
        {
            scr_createAndSendNewBullet(hero, bullet)
        } 
        
        alarm[0] = shot1_delay*3;
        
        if (alarm[0] >10)
        {
            state= "firing";
        }
    
    }
}
