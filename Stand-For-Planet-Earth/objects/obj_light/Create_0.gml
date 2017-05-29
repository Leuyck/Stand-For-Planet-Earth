mode = 0;

// Variables utilisées dans Step
time = 0;
increment = 0.1;
l = 0;
d = 0;

SL_light_ini_begin(); // Commence l'initialisation de l'objet light

sl_light_texture = spr_light; // Texture de la lumière


// Détermine les objets devant 'occluder' la lumière
SL_light_cast_obj(obj_localPlayer,-1);
SL_light_cast_obj(obj_localNpc,-1);
SL_light_cast_obj(obj_wall,-1);
SL_light_cast_obj(obj_barrel,-1);
SL_light_cast_obj(obj_crate,-1);


SL_light_ini_end(); // Termine l'initialisation de l'objet light

