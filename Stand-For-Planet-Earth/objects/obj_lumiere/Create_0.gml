/// @description init light
if(!instance_exists(obj_camera))then instance_create(x,y,obj_camera);

lx = x;				// the light position, based around the mouse location
ly = y;

surfWidth = obj_camera.viewWidth;
surfHeight = obj_camera.viewHeight;

radius = abs(image_xscale*(sprite_get_width(spr_lumiere)/2))		// the radius of the light

lightIntensity = 0.7;			//intensité de la lumière (de 0 à 1)
surf = -1;

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();

VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

LightPosRadius = shader_get_uniform(sha_light,"u_fLightPositionRadius");

if(!instance_exists(obj_ambientShadow)) then instance_create_layer(x,y,layer,obj_ambientShadow);

staticObjectMakingShadowList = ds_list_create();
ds_list_add(staticObjectMakingShadowList, obj_decor_base);
ds_list_add(staticObjectMakingShadowList, obj_shadowMaker);

movingObjectMakingShadowList = ds_list_create();
ds_list_add(movingObjectMakingShadowList, obj_gabari_hero);
ds_list_add(movingObjectMakingShadowList, obj_localPlayer);

allInstanceMakingShadowList = noone;

staticInstanceDetected = noone;
movingInstanceDetected = noone;

scr_initializeLumiere()