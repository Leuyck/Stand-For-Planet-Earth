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
	var laserAngle = laserSpriteAngle + hero.image_angle;
	var laserLength = 0;
	
	for(var i = 5; i<size; i+=5){
		if(collision_line(laserBeginX,laserBeginY,laserBeginX+lengthdir_x(i,laserAngle),laserBeginY+lengthdir_y(i,laserAngle),obj_decor_base,false,true)==noone){
			laserLength=i+10
		}
		else{
			break;
		}
	}
	var laserEndX = laserBeginX+lengthdir_x(laserLength,laserAngle);
	var laserEndY = laserBeginY+lengthdir_y(laserLength,laserAngle);
	


	if(hero.state == "firing1"){
		draw_set_alpha(0.7)
	}else{
		draw_set_alpha(0.3);	
	}
	draw_line_color(laserBeginX,laserBeginY, laserEndX,laserEndY,color,color)
	draw_set_alpha(1);
}