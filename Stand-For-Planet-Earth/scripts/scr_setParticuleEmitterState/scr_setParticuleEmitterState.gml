///scr_setParticuleEmitterState()

if(part_emitter_exists(Sname,emitter1)){
	part_emitter_region(Sname,emitter1,bbox_left,bbox_right,bbox_top,bbox_bottom,1,1);
	if(alarm[8] == -1){
		if(currentHealth==1){
			alarm[8] = choose(0.2,0.4,0.5)*room_speed;
		}else if(currentHealth ==2){
			alarm[8] = choose(0.4,0.5,0.8)*room_speed;
		}else if(currentHealth ==3){
			alarm[8] = choose(0.8,1,1.2)*room_speed;
		}
	}
}