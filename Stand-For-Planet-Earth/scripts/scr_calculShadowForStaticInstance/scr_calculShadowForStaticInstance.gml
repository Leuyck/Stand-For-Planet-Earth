///scr_calculShadowForStaticInstance(searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var searchingInstancePrec = argument[0];
var searchingPointPrec = argument[1];

///CALCUL SHADOW FOR MOBILIER
scr_calculSmallShadowForStaticInstance(searchingInstancePrec,searchingPointPrec);

///CALCUL SHADOW FOR WALLs & INIFIT STATIC SHADOW INSTANCES
scr_calculInfinitShadowForStaticInstance(searchingInstancePrec,searchingPointPrec);