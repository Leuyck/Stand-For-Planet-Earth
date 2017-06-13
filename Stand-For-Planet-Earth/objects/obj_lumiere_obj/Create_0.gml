/// @description init shadow casting
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

surf = -1;
LightPosRadius = shader_get_uniform(shader0,"u_fLightPositionRadius");

lx = x;				// the light position, based around the mouse location
ly = y;
rad = 700			// the radius of the light
objectInLightArray=noone;

scr_calculShadow_mur_epais();