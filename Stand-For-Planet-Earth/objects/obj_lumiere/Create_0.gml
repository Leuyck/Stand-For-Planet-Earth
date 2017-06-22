/// @description init shadow casting

lx = x;				// the light position, based around the mouse location
ly = y;
rad = abs(image_xscale*(sprite_get_width(spr_lumiere)/2))		// the radius of the light
lightIntensity = 0.7;			//intensité de la lumière (de 0 à 1)
surf = -1;

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();

VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

LightPosRadius = shader_get_uniform(sha_light,"u_fLightPositionRadius");

instanceDetected = scr_calculShadow(rad,obj_mur_parent,0.5,0.1);			//detect instance to get point of shadow casting


if(!instance_exists(obj_ambientShadow)) then instance_create_layer(x,y,layer,obj_ambientShadow);