// Initialisation de l'objet light

SL_light_ini_begin(); // Commence l'initialisation de l'objet light

sl_light_texture = spr_light02; // Texture de la lumière
/*sl_light_xscale = 2; // Facteurs d'étirement x et y de la lumière
sl_light_yscale = 2;
sl_light_shadowsharpness = 1; // Facteur de dureté des ombres
sl_light_color = c_purple; // ????????
*/

// Détermine les objets devant 'occluder' la lumière
//SL_light_cast_obj(obj_body,-1);
SL_light_cast_obj(obj_wall,-1);
SL_light_cast_obj(obj_wall_broke,-1);
//SL_light_cast_obj(obj_shotgun,-1);
//SL_light_cast_obj(obj_bullet2,-1);
SL_light_cast_obj(obj_barrel,-1);
SL_light_cast_obj(obj_crate,-1);


SL_light_ini_end(); // Termine l'initialisation de l'objet light

/* */
/*  */
