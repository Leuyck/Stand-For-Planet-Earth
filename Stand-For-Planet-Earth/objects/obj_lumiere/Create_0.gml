/// @description init light
if(!instance_exists(obj_camera))then instance_create(x,y,obj_camera);
lx = x;				// the light position, based around the mouse location
ly = y;

surfWidth = obj_camera.viewWidth;
surfHeight = obj_camera.viewHeight;

radius = abs(image_xscale*(sprite_get_width(spr_lumiere)/2))		// the radius of the light

lightIntensity = 0.6;			//intensité de la lumière (de 0 à 1)
surf = -1;

hue = color_get_hue(image_blend);
sat = color_get_saturation(image_blend);

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();

VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

LightPosRadius = shader_get_uniform(sha_light,"u_fLightPositionRadius");

if(!instance_exists(obj_ambientShadow)) then instance_create_depth(x,y,depth,obj_ambientShadow);

staticObjectMakingInfinitShadowList = ds_list_create();
ds_list_add(staticObjectMakingInfinitShadowList, obj_mur_parent);
ds_list_add(staticObjectMakingInfinitShadowList, obj_shadowMaker);

staticObjectMakingSmallShadowList = ds_list_create();
//ds_list_add(staticObjectMakingSmallShadowList, obj_mobilier_parent);

movingObjectMakingShadowList = ds_list_create();
//ds_list_add(movingObjectMakingShadowList, obj_gabari_hero);
//ds_list_add(movingObjectMakingShadowList, obj_lightCollisionCircle);
//ds_list_add(movingObjectMakingShadowList,obj_door_parent);

staticObjectMakingMovingShadowList = ds_list_create();
ds_list_add(staticObjectMakingMovingShadowList,obj_door_parent);

staticInstanceDetected = noone;
movingInstanceDetected = noone;


initialized = false;
//scr_initializeLumiere();


