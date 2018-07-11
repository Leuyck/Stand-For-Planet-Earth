///scr_createReturningBatteParticules

with(obj_bullet_batte_parent){
	if(self.returnToBatBot == true){
		var relativeBrasY = bulletFrom.relativeBrasDroitY;
		if(object_index == obj_bullet_batte_g) then relativeBrasY = bulletFrom.relativeBrasGaucheY;
		var xTarget = bulletFrom.x + lengthdir_x(bulletFrom.relativeBrasX, bulletFrom.image_angle) - lengthdir_y(relativeBrasY, bulletFrom.image_angle)
		var yTarget = bulletFrom.y + lengthdir_y(bulletFrom.relativeBrasX, bulletFrom.image_angle) + lengthdir_x(relativeBrasY, bulletFrom.image_angle);
			
		var particuleColor = $D100FE;
		Sname = part_system_create();
		part_system_depth(Sname, depth-1);
		particle1 = part_type_create();
		part_type_shape(particle1,pt_shape_circle);
		part_type_size(particle1,0.3,0.3,0.2,0);
		part_type_scale(particle1,1,1);
		part_type_color1(particle1,particuleColor);
		part_type_alpha2(particle1,1,0);
		part_type_speed(particle1,0,0,0,0);
		part_type_direction(particle1,0,0,0,0);
		part_type_orientation(particle1,0,0,0,0,0);
		part_type_blend(particle1,false);
		part_type_life(particle1,10,10);
			
		part_particles_create(Sname,xTarget,yTarget,particle1,1);
	}
}	