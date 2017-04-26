// Initialisation de l'objet engine

SL_engine_ini_begin(); // Commence l'initialisation du système

sl_tod_active = 0; // Désactive le cycle jour nuit
sl_ambientshadows_active = true; // Active le rendu des ombres ambiantes

global.sl_ambient_light  = 0.06; // Intensité Lumière ambiante


// Génération des ambient maps
SL_sprite_set_ambient(spr_hero1_melee_attack);
SL_sprite_set_ambient(spr_hero1_stand);
SL_sprite_set_ambient(spr_title);
SL_sprite_set_ambient(spr_btn_solo);
SL_sprite_set_ambient(spr_barrel);


// Liste des objets projetant une ombre globale
SL_global_cast_obj(0,obj_localPlayer,-1,0,1);
SL_global_cast_obj(0,obj_title,-1,0,1);
SL_global_cast_obj(0,obj_btn_solo,-1,0,1);


// Liste des objets lumière
SL_add_light(obj_light);
SL_add_light(obj_light2);
SL_add_light(obj_light_menu);
SL_add_light(obj_localPlayer_tracker);

//SL_add_light (obj_light_torch);

SL_ToD_empty(); // Initialisation du ToD
SL_set_time(0); // Initialisation de l'heure

SL_engine_ini_end(); // Termine l'initialisation du système


