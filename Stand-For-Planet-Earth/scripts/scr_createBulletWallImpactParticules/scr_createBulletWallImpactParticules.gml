///scr_createBulletWallImpactParticules(xx,yy,dir,projectionAngle);
var xx = argument[0];
var yy = argument[1];
var dir = argument[2];///the direction of the particules
var projectionAngle = argument[3]; ///angle of the spray

Sname = part_system_create();
part_system_depth(Sname, depth-1);

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_disk);
part_type_size(particle1,0.3,0.3,0,0);
part_type_scale(particle1,0.15,0.15);
part_type_color1(particle1,c_dkgray);
part_type_alpha1(particle1,1);
part_type_speed(particle1,4,10,-0.4,0);
part_type_direction(particle1,dir-projectionAngle,dir+projectionAngle,2,0);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,0);
part_type_life(particle1,5,15);

part_system_depth(Sname,layer_get_depth("layer_murs")+1)
part_particles_create(Sname,xx,yy,particle1,choose(10,15));