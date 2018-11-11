///scr_fire1CheckBadaBot()
var numberOfShotPerSec = (shot1PerSec+bonusSpeed*attackSpeedBonusFactor*shot1PerSec)
loadingFire1Time = (room_speed/numberOfShotPerSec)-(sprite_get_number(spr_plasmaBawl_shot)-4)

if (releaseBullet){
	if(ds_map_find_value(sprites,state) !=ds_map_find_value(sprites,"firing1")){
		ds_map_replace(sprites,"firing1",ds_map_find_value(sprites,state));
	}
	state = "firing1";
	shot1_bullet_count = 1 + (obj_plasmaBawl.currentCharge-1) div 20;
	precision = 3 + ((obj_plasmaBawl.currentCharge-1) div 20)*3;
    for (var i = 0; i < shot1_bullet_count; i++) {
        scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", true)
		audio_play_sound(asset_get_index("snd_badaBot_fire1_"+ string(choose(1,2,3))),1,false)
    } 
	alarm[0] =room_speed/numberOfShotPerSec
	currentMunition-=shot1_bullet_count;
	releaseBullet = false;
}