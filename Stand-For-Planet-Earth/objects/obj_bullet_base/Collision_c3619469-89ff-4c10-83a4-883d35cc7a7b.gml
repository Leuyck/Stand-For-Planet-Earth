/// @description 
instance_destroy();


if(other.hp ==1){
	other.hp = 0;
	var multiplicateFactor = 3;
	for(var j = 0; j<multiplicateFactor;j++){
		for(var i = 0; i<sprite_get_number(spr_fenetre_eclats);i++){
			var xBase = other.x+lengthdir_x((sprite_get_height(spr_fenetre)-10)/2,other.image_angle-90);
			var yBase = other.y+lengthdir_y((sprite_get_height(spr_fenetre)-10)/2,other.image_angle-90);
	
			var angle = other.image_angle+90;
			var randomLength = irandom_range(1,sprite_get_height(spr_fenetre)-10)
			var xSpawn = xBase+lengthdir_x(randomLength,angle);
			var ySpawn = yBase+lengthdir_y(randomLength,angle);

			var instance = instance_create_depth(xSpawn,ySpawn,other.depth,obj_fenetre_eclat);
	
			var dir = other.image_angle
			if(angle_difference(direction,other.image_angle)>= -90 && angle_difference(direction,other.image_angle)<= 90){
				var dir = other.image_angle	
			}else{
				var dir = other.image_angle	-180;
			}
			instance.direction = dir;
			instance.image_index = i;
		}
	}
}else{
exit;	
}