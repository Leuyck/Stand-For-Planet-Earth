///scr_calculShadowForStaticInstance(searchingInstancePrec, searchingPointPrec);
//regarde tout ce qu'il y a autour et génère un tableau des coordonnée des murs qui doivent faire de l'ombre
var distanceEntre2Points = argument[0];
var distanceEntre2PointPrecis = argument[1];

///CALCUL SHADOW FOR MOBILIER
//scr_calculSmallShadowForStaticInstance(1,distanceEntre2PointPrecis);

///CALCUL SHADOW FOR WALLs & INIFIT STATIC SHADOW INSTANCES
scr_calculInfinitShadowForStaticInstance(distanceEntre2Points,distanceEntre2PointPrecis);