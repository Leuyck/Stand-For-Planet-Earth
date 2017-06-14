/// @description init shadow casting
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

surf = -1;
LightPosRadius = shader_get_uniform(sha_light,"u_fLightPositionRadius");

lx = x;								// the light position, based around the mouse location
ly = y;
rad = 500							// the radius of the light
edgesCreatingShadowArray=noone;		//array of the edges projecting shadow


scr_calculShadow(obj_mur_epais,9);