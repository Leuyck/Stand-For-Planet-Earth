///scr_createBulletShieldImpactParticules(xx,yy,angle,projectionAngle);
var xx = argument[0];
var yy = argument[1];
var dir = argument[2];///the direction of the particules
var projectionAngle = argument[3]; ///angle of the spray

Sname = part_system_create();
part_system_depth(Sname, 1);

	
particle2 = part_type_create();
part_type_shape(particle2,pt_shape_line);
part_type_size(particle2,1,1,-0.033,0.1);
part_type_scale(particle2,0.30,0.30);
part_type_color2(particle2,c_yellow,c_orange);
part_type_alpha1(particle2,1);
part_type_speed(particle2,6,12,-0.4,0);
part_type_direction(particle2,point_direction(xx,yy,xOrigin,yOrigin)-projectionAngle,point_direction(xx,yy,xOrigin,yOrigin)+projectionAngle,0,0);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,0);
part_type_life(particle2,15,30);

part_particles_create(Sname,xx,yy,particle2,choose(4,6,8,10))
