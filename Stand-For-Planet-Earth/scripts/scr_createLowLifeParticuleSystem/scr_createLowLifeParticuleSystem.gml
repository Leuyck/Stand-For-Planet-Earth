///scr_createLowLifeParticuleSystem

Sname = part_system_create();
part_system_depth(Sname, depth-1);

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_spark);
part_type_size(particle1,1,1,-0.033,0.1);
part_type_scale(particle1,0.15,0.15);
part_type_color2(particle1,65535,410834);
part_type_alpha1(particle1,1);
part_type_speed(particle1,4,10,-0.4,0);
part_type_direction(particle1,0,359,2,0);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,5,30);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_flare);
part_type_size(particle2,1,1,-0.01,0.1);
part_type_scale(particle2,0.15,0.15);
part_type_color2(particle2,65535,410834);
part_type_alpha1(particle2,1);
part_type_speed(particle2,4,10,-0.4,0);
part_type_direction(particle2,0,359,-2,0);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,5,30);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,bbox_left,bbox_right,bbox_top,bbox_bottom,1,1);