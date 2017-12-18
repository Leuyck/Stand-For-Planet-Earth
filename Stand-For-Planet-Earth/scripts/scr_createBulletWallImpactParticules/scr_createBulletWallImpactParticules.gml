///scr_createBulletWallImpactParticules();
action_bounce(1, 1);
speed = 0;
var projectionAngle =(180-angle_difference(point_direction(xOrigin,yOrigin,x,y),direction))/2

Sname = part_system_create();
part_system_depth(Sname, depth-1);

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_line);
part_type_size(particle1,1,1,0,0);
part_type_scale(particle1,0.15,0.15);
part_type_color1(particle1,c_dkgray);
part_type_alpha1(particle1,1);
part_type_speed(particle1,4,10,-0.4,0);
part_type_direction(particle1,direction-projectionAngle,direction+projectionAngle,2,0);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,0);
part_type_life(particle1,5,15);

part_system_depth(Sname,obj_mur_parent.depth+1)
part_particles_create(Sname,x,y,particle1,choose(3,5))