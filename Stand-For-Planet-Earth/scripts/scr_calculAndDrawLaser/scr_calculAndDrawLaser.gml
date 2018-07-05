///scr_calculAndDrawLaser();

if(ds_list_find_index(spriteAvailableForLaser,hero.sprite_index) !=-1){
	var msg = laserCoordinates[hero.sprite_index,floor(hero.image_index)]; //string to split
	var coordinates = scr_getLaserCoordinatesList(msg);

	var relativeX1 = ds_list_find_value(coordinates,0)- sprite_get_xoffset(hero.sprite_index);///relative Position in the sprite
	var relativeY1 = ds_list_find_value(coordinates,1)- sprite_get_yoffset(hero.sprite_index);
	var relativeX2 = ds_list_find_value(coordinates,2)- sprite_get_xoffset(hero.sprite_index);
	var relativeY2 = ds_list_find_value(coordinates,3)- sprite_get_yoffset(hero.sprite_index);

	ds_list_destroy(coordinates)

	var laserBeginX = hero.x + lengthdir_x(relativeX1, hero.image_angle) - lengthdir_y(relativeY1, hero.image_angle);
	var laserBeginY =  hero.y + lengthdir_y(relativeX1, hero.image_angle) + lengthdir_x(relativeY1, hero.image_angle);
	
	var laserSpriteAngle = point_direction(relativeX2,relativeY2,relativeX1,relativeY1);
	laserAngle = laserSpriteAngle + hero.image_angle;

	var lengthFactor = 1;
	if(collision_line(laserBeginX,laserBeginY,laserBeginX+lengthdir_x(size,laserAngle),laserBeginY+lengthdir_y(size,laserAngle),obj_decor_base,false,true)!=noone){
		var laserLength = 0;
		for(var i = 5; i<size-10; i+=5){
			if(collision_line(laserBeginX,laserBeginY,laserBeginX+lengthdir_x(i,laserAngle),laserBeginY+lengthdir_y(i,laserAngle),obj_decor_base,false,true)==noone){
				laserLength=i+10
			}
			else{
				break;
			}
		}
		lengthFactor = laserLength/size;
	}

	draw_sprite_general(spr_aimLaser,-1,0,0,sprite_get_width(spr_aimLaser)*lengthFactor,sprite_get_height(spr_aimLaser),laserBeginX,laserBeginY,size/sprite_get_width(spr_aimLaser),0.5,laserAngle,color,color,color,color,alpha);
	draw_set_alpha(1);
}