///scr_fire1Check()

/*
if (state !="dead" && alarm[4]<0)
{
    if(fire1 && deployed && plasmaBawl.attacking == false) 
    {
		alarm[4] = loadingFire1Time * room_speed;
		plasmaBawl.attacking = true;
    }
    
}

if (state=="firing1")
{
    for (var i = 0; i < shot1_bullet_count; i++) 
    {
        scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", true)
		audio_play_sound(fire1Sound,1,false)
    } 
	state= "standing";
}
*/
if (state !="dead")
{
    if(fire1 && deployed) 
    {
		loadingFire1 = true;
	}else{
		loadingFire1 = false;	
	}
	
}

if (state=="firing1")
{
	alarm[0] =shot1PerSec*room_speed;
    for (var i = 0; i < shot1_bullet_count; i++) 
    {
        scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", true)
		audio_play_sound(fire1Sound,1,false)
    } 
	state= "standing";
}