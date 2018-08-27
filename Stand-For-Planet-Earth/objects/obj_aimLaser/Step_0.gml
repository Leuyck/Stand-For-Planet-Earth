/// @description 
x= hero.x + lengthdir_x(hero.relativeBoutCanonX, hero.image_angle) - lengthdir_y(hero.relativeBoutCanonY, hero.image_angle)
y= hero.y + lengthdir_y(hero.relativeBoutCanonX, hero.image_angle) + lengthdir_x(hero.relativeBoutCanonY, hero.image_angle)
visible = hero.visible;

if(hero != noone && color == c_white){
	if(hero.object_index == obj_PetBot){
		color = c_green	
	}else if(hero.object_index == obj_EngiBot){
		color = c_red;
	}else if(hero.object_index == obj_BadaBot){
		color = c_purple;
	}else{
		instance_destroy();	
	}
}

if(hero != noone){
	if(hero.state == "firing1"){
		if(color = c_green) then alpha = 0.7;
		else{
			alpha = 0.5
		}
	}else{
		if(color = c_green) then alpha = 0.4;
		else{
			alpha = 0.3
		}
	}
}