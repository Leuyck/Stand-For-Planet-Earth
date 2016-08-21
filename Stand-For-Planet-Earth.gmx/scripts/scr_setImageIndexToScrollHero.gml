var btnScrollHero = argument[0];
var character = argument[1];

switch(character){
    case "hero1":
        btnScrollHero.image_index = 0;
        break;
        
    case "hero2":
        btnScrollHero.image_index = 1;
        break;
        
    case "hero3":
        btnScrollHero.image_index = 2;
        break;
        
    default:
        btnScrollHero.image_index = 0;
        break;
}
