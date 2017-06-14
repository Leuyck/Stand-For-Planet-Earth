/// Config lumière

// Mise à jour des coordonnées de la lumière
sl_light_x = x;
sl_light_y = y;



// Configurations des différentes lumières déterminées par la var 'mode' déclarée dans l'event creation code de l'éditeur de room //
switch mode
{
case 1: // Lumière rouge saccadée
{
sl_light_xscale          = 6;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = c_blue;
sl_light_power           = random(1);
sl_light_ambientpower = 0;
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.03;
sl_light_shadowsharpness = 0.5;
sl_light_castshadow = true;
sl_light_refresh = true;
sl_light_refreshrate = 0;

} break;

case 2 : // Petite lumière orange
{
sl_light_xscale = 3; 
sl_light_yscale = sl_light_xscale;
sl_light_color = c_orange;
sl_light_power = 1; // Intensité de la lumière. 1 = Max
sl_light_ambientpower = 0; // densité de lumière dans les zones d'ombres
sl_light_shadowlength = 4; //Portée de l'ombre
sl_light_shadowfactor = 1.01; 
sl_light_shadowsharpness = 0.5;
sl_light_castshadow =true;
sl_light_refresh = true;
sl_light_refreshrate = 0;
} break;

case 3: // Lumière jaune clignotante
{
sl_light_xscale          = 1.33;
sl_light_yscale          = sl_light_xscale;
sl_light_color           = c_red;
sl_light_ambientpower    = 0;
sl_light_power = 1;
sl_light_shadowlength    = 3;
sl_light_shadowfactor    = 1.045;
sl_light_shadowsharpness = 0.4;
sl_light_castshadow = true;
sl_light_refresh = true;
sl_light_refreshrate = 0;

// Clignotement de la lumière
time += 0.03*60/max(fps,1) if time>=pi*2 time=0;

sl_light_power  = 0.33 + (sin(time)+1) / 3;
sl_light_xscale = 0.8 + 0.7*sl_light_power;
sl_light_yscale = sl_light_xscale;
} break;
}

