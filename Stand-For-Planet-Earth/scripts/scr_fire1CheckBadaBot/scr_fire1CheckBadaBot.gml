///scr_fire1CheckBadaBot()

if (state !="dead" && deployed)
{
    if(fire1) 
    {
		loadingFire1 = true;
		var numberOfShotPerSec = (shot1PerSec+bonusSpeed*attackSpeedBonusFactor*shot1PerSec) 
		loadingFire1Time = (room_speed/numberOfShotPerSec)-(sprite_get_number(spr_plasmaBawl_shot)-4)
	}else{
		loadingFire1 = false;	
	}
	
}

if(controller.object_index == obj_controller_keyboard){
	var h_point = controller.horizontalValue;
	var v_point = controller.verticalValue;
}else{
	var h_point = controller.lJoyHValue;
	var v_point = controller.lJoyVValue;
}
if ((h_point != 0) || (v_point != 0)){
	ds_map_replace(sprites, "firing1", spr_BadaBot_move);
}else{
	ds_map_replace(sprites, "firing1", spr_BadaBot_stand);
}

if (state=="firing1")
{
    for (var i = 0; i < shot1_bullet_count; i++) 
    {
        scr_createAndSendNewBullet(id, shot1_bullet_type, "hero", true)
		audio_play_sound(fire1Sound,1,false)
    } 
	alarm[0] =room_speed/numberOfShotPerSec
	state= "standing";
}