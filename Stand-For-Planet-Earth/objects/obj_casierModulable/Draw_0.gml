/// @description 
draw_self();
var coordXGauche = x+ lengthdir_x(point_distance(sprite_xoffset,sprite_yoffset,porteGaucheX,porteGaucheY), image_angle+point_direction(sprite_xoffset,sprite_yoffset,porteGaucheX,porteGaucheY));
var coordYGauche = y+ lengthdir_y(point_distance(sprite_xoffset,sprite_yoffset,porteGaucheX,porteGaucheY), image_angle+point_direction(sprite_xoffset,sprite_yoffset,porteGaucheX,porteGaucheY));
draw_sprite_ext(spr_casier_porteGauche,0,coordXGauche,coordYGauche,image_xscale,image_yscale,image_angle-angleGauche,c_white,1);

var coordXDroite = x+ lengthdir_x(point_distance(sprite_xoffset,sprite_yoffset,porteDroiteX,porteDroiteY), image_angle+point_direction(sprite_xoffset,sprite_yoffset,porteDroiteX,porteDroiteY));
var coordYDroite = y+ lengthdir_y(point_distance(sprite_xoffset,sprite_yoffset,porteDroiteX,porteDroiteY), image_angle+point_direction(sprite_xoffset,sprite_yoffset,porteDroiteX,porteDroiteY));
draw_sprite_ext(spr_casier_porteDroite,0,coordXDroite,coordYDroite,image_xscale,image_yscale,image_angle+angleDroite,c_white,1);