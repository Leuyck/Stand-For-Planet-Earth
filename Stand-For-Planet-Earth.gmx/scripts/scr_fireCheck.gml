///scr_fireCheck(playername, bulletname)

// If we are firing
var hero = argument[0]
var bullet = argument[1]

if (global.character = "hero1" || global.character = "hero2")
{
    if(fire1 && alarm[0] <= 0)
    {
        state = "firing";
     
            var bullet_id
            bullet_id = instance_create (hero.x+lengthdir_x(193.00,hero.dir+0.30), hero.y+lengthdir_y(193.00,hero.dir+0.30), bullet);
            bullet_id.direction = point_direction(hero.x,hero.y,mouse_x, mouse_y) + random_range(-hero.vari, hero.vari)
            bullet_id.image_angle = bullet_id.direction;
            hero.bulletDirection1 = bullet_id.direction;
            alarm[0] = shot1_delay
            
            if (alarm[0] >10)
            {
                state= "firing";
            }
    
    }
}
else if (global.character = "hero3")
{
    if(fire1 && alarm[0] <= 0)
    {
        state = "firing";

        var bullet_id;
        bullet_id = instance_create (hero.x+lengthdir_x(193.00,hero.dir+0.30), hero.y+lengthdir_y(193.00,hero.dir+0.30), bullet);
        bullet_id.direction = point_direction(hero.x,hero.y,mouse_x, mouse_y) + random_range(-hero.vari, hero.vari);
        bullet_id.image_angle = bullet_id.direction;
        hero.bulletDirection1 = bullet_id.direction;
        
        var bullet_id;
        bullet_id = instance_create (hero.x+lengthdir_x(193.00,hero.dir+0.30), hero.y+lengthdir_y(193.00,hero.dir+0.30), bullet);
        bullet_id.direction = point_direction(hero.x,hero.y,mouse_x, mouse_y) + random_range(-hero.vari, hero.vari);
        bullet_id.image_angle = bullet_id.direction;
        hero.bulletDirection2 = bullet_id.direction;
        
        var bullet_id;
        bullet_id = instance_create (hero.x+lengthdir_x(193.00,hero.dir+0.30), hero.y+lengthdir_y(193.00,hero.dir+0.30), bullet);
        bullet_id.direction = point_direction(hero.x,hero.y,mouse_x, mouse_y) + random_range(-hero.vari, hero.vari);
        bullet_id.image_angle = bullet_id.direction;
        hero.bulletDirection3 = bullet_id.direction;
        
        var bullet_id;
        bullet_id = instance_create (hero.x+lengthdir_x(193.00,hero.dir+0.30), hero.y+lengthdir_y(193.00,hero.dir+0.30), bullet);
        bullet_id.direction = point_direction(hero.x,hero.y,mouse_x, mouse_y) + random_range(-hero.vari, hero.vari);
        bullet_id.image_angle = bullet_id.direction;
        hero.bulletDirection4 = bullet_id.direction;
        
        var bullet_id;
        bullet_id = instance_create (hero.x+lengthdir_x(193.00,hero.dir+0.30), hero.y+lengthdir_y(193.00,hero.dir+0.30), bullet);
        bullet_id.direction = point_direction(hero.x,hero.y,mouse_x, mouse_y) + random_range(-hero.vari, hero.vari);
        bullet_id.image_angle = bullet_id.direction;
        hero.bulletDirection5 = bullet_id.direction;
        
        
        
            
 
            alarm[0] = shot1_delay*3;
            if (alarm[0] >10)
            {
                state= "firing";
            }
    
    }
}
