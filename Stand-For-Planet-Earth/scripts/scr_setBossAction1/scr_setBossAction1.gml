var behaviour = argument[0];
var ennemy = argument[1];

switch(behaviour) {
    case "chase":
        var hero = ennemy;
		if(alarm[5] == -1 && state != "fire2") {
			var n = 4;
			if(irandom(n)<n){
				if(path_exists(path)) then path_delete(path);
				var newPath = path_add();
				if(mp_grid_path(obj_grid.grid, newPath, x, y, hero.x, hero.y, true)) {
					scr_initNpcPath(newPath);
					state = "walking";
					alarm[5] = room_speed / 2;
				}else {
					state = "standing";
					alarm[5] = -1;
				}
			}else{
				if(path_exists(path)) then path_delete(path);
				direction = point_direction(x, y , ennemy.x, ennemy.y);
				image_angle = direction;
				image_index = 0;
				state = "fire2";
			}
		}
		if(state == "fire2"){
			direction = point_direction(x, y , ennemy.x, ennemy.y);
			image_angle = direction;
			if(image_index <image_number-1){	
				damage = 4
				if(image_index >=7){ 
					var fire2Speed = spdChase*2
					speed = fire2Speed;
					if(place_meeting(x+lengthdir_x(fire2Speed,direction),y+lengthdir_y(fire2Speed,direction),obj_decor_base)||
						place_meeting(x+lengthdir_x(fire2Speed,direction),y+lengthdir_y(fire2Speed,direction),obj_localPlayer)){
						speed = 0;
					}
				}
			}else{
				state = "standing";	
				speed = 0;
			}
		}
		if(path_exists(path)) {
			scr_moveToNextPointInPath(spdChase, false);
			image_angle = point_direction(x, y, hero.x, hero.y);
		}
        break;
        
    case "attack":
		speed = 0;
		direction = point_direction(x, y , ennemy.x, ennemy.y);
		image_angle = direction;
		
		if(path_exists(path)){
			path_delete(path);
		}
		if(state == "standing" || state == "walking" || ((state == "fire1"/*||state == "fire2"*/)&& image_index >= image_number -1)){
			scr_setFire1CoupSallyBot();
			for (var i = 0; i < shot1_bullet_count; i++) {
				//scr_createAndSendNewBullet(id, shot1_bullet_type, "ennemi", true)
				//if(fire1Sound != noone){
				//	audio_play_sound(fire1Sound, 1, false)
				//}
			}
			image_index = 0;
			state = "fire1";

		}else if(state == "fire1" && image_index<image_number-1){
			state = "fire1";	
		}
        break;

	case "surprised":
		scr_surprised(ennemy);
		break;
}