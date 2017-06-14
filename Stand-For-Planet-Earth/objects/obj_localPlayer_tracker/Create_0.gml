///Initialize player
viewSpeed = -1 ;
viewMaxSpeed = 15;

trackingEnable = false;

__view_set( e__VW.HSpeed, 0, viewSpeed );
__view_set( e__VW.VSpeed, 0, viewSpeed );
__view_set( e__VW.HBorder, 0, (__view_get( e__VW.WPort, 0 )/5)*4 )
__view_set( e__VW.VBorder, 0, (__view_get( e__VW.HPort, 0 )/5)*4 )



// Initialisation de l'objet light
/*
SL_light_ini_begin(); // Commence l'initialisation de l'objet light

sl_light_texture = spr_light; // Texture de la lumière


SL_light_ini_end(); // Termine l'initialisation de l'objet light

/* */
/*  */
