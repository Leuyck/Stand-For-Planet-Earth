owner = noone;


// Particle system
part1_sys = part_system_create();
part_system_depth(part1_sys,0);


// Particle
part1 = part_type_create();
part_type_shape(part1, pt_shape_cloud);
part_type_scale(part1, 1, 1);
part_type_size(part1, 1, 1, 0, 0);
part_type_colour2(part1, c_white, c_white);
part_type_alpha2(part1, 0.05, 0.2);
part_type_speed(part1, 0.1, 0.2, 0, 0);
part_type_direction(part1, 0,359, 0, 0);
//part_type_gravity(part1, 0.02,90)
part_type_life(part1, room_speed*1, room_speed*2);
//part_type_blend(part1,1);

// Particle Emitter
part1_emit = part_emitter_create(part1_sys);
//part_emitter_region(part1_sys, part1_emit, x+100, x-100, y+100, y-100, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(part1_sys, part1_emit, part1,-10)


