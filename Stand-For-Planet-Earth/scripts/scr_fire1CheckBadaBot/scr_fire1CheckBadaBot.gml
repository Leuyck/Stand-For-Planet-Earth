///scr_fire1CheckBadaBot()
var numberOfShotPerSec = (shot1PerSec+bonusSpeed*attackSpeedBonusFactor*shot1PerSec)
loadingFire1Time = (room_speed/numberOfShotPerSec)-(sprite_get_number(spr_plasmaBawl_shot)-4)

if (releaseBullet){
	//state = "firing1";
    for (var i = 0; i < shot1_bullet_count; i++) {
        scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", true)
		audio_play_sound(fire1Sound,1,false)
    } 
	alarm[0] =room_speed/numberOfShotPerSec
	currentMunition--;
	releaseBullet = false;
}