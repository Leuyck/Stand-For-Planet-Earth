///scr_createBulletNPCImpactParticules(xx,yy,angle,projectionAngle);
var xx = argument[0];
var yy = argument[1];
var dir = argument[2];///the direction of the particules
var projectionAngle = argument[3]; ///angle of the spray

Sname = part_system_create();
part_system_depth(Sname, depth+1);


if(other.genre == "humain"){
	particle1 = part_type_create();
	part_type_shape(particle1,pt_shape_disk);
	part_type_size(particle1,1,1,-0.033,0.1);
	part_type_scale(particle1,0.15,0.15);
	part_type_color2(particle1,c_red,c_maroon);
	part_type_alpha1(particle1,1);
	part_type_speed(particle1,6,12,-0.4,0);
	part_type_direction(particle1,dir-projectionAngle,dir+projectionAngle,0,0);
	part_type_orientation(particle1,0,0,0,0,1);
	part_type_blend(particle1,0);
	part_type_life(particle1,15,30);
	part_particles_create(Sname,xx,yy,particle1,choose(4,6,8,10))
}else{
	particle1 = part_type_create();
	part_type_shape(particle1,pt_shape_line);
	part_type_size(particle1,1,1,-0.033,0.1);
	part_type_scale(particle1,0.30,0.30);
	part_type_color2(particle1,c_yellow,c_orange);
	part_type_alpha1(particle1,1);
	part_type_speed(particle1,6,12,-0.4,0);
	part_type_direction(particle1,dir-projectionAngle,dir+projectionAngle,0,0);
	part_type_orientation(particle1,0,0,0,0,1);
	part_type_blend(particle1,0);
	part_type_life(particle1,15,30);
	
	particle2 = part_type_create();
	part_type_shape(particle2,pt_shape_line);
	part_type_size(particle2,1,1,-0.033,0.1);
	part_type_scale(particle2,0.30,0.30);
	part_type_color2(particle2,c_yellow,c_orange);
	part_type_alpha1(particle2,1);
	part_type_speed(particle2,3,6,-0.4,0);
	part_type_direction(particle2,point_direction(xx,yy,xOrigin,yOrigin)-projectionAngle,point_direction(xx,yy,xOrigin,yOrigin)+projectionAngle,0,0);
	part_type_orientation(particle2,0,0,0,0,1);
	part_type_blend(particle2,0);
	part_type_life(particle2,15,30);
	part_particles_create(Sname,xx,yy,particle1,choose(4,6,8,10))
	part_particles_create(Sname,xx,yy,particle2,choose(2,3,4))
}