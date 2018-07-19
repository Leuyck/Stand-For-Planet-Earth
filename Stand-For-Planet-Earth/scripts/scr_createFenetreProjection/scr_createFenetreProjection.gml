///scr_createFenetreProjection(fenetre.id, multiplicateFactor)
var fenetre = argument[0];
var multiplicateFactor = argument[1];

for(var j = 0; j<multiplicateFactor;j++){
	for(var i = 0; i<sprite_get_number(spr_fenetre_eclats);i++){
		var xBase = fenetre.x+lengthdir_x((sprite_get_height(spr_fenetre)-10),fenetre.image_angle-90)
		var yBase = fenetre.y+lengthdir_y((sprite_get_height(spr_fenetre)-10),fenetre.image_angle-90);

		var angle = fenetre.image_angle+90;
		var randomLength = irandom_range(1,sprite_get_height(spr_fenetre)-10)
		var xSpawn = xBase+lengthdir_x(randomLength,angle);
		var ySpawn = yBase+lengthdir_y(randomLength,angle);

		var instance = instance_create_depth(xSpawn,ySpawn,fenetre.depth,obj_fenetre_eclat);
	
		var dir = fenetre.image_angle
		if(angle_difference(direction,fenetre.image_angle)>= -90 && angle_difference(direction,fenetre.image_angle)<= 90){
			var dir = fenetre.image_angle	
		}else{
			var dir = fenetre.image_angle	-180;
		}
		instance.direction = dir;
		instance.image_index = i;
		instance.speed = random_range(8,20);
	}

	for(var i = 0; i <5; i++){///create some directionnal projection in the way of bullet
		var xSpawn = x;
		var ySpawn = y;
		var instance = instance_create_depth(xSpawn,ySpawn,fenetre.depth,obj_fenetre_eclat);
		instance.direction = direction+(irandom_range(-35,35));
		instance.image_index = irandom_range(0,sprite_get_number(spr_fenetre_eclats)-1);
		instance.speed = random_range(15,20);
	}
}