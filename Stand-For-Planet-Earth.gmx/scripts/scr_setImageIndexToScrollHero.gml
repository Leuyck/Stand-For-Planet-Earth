var scrollHero = argument[0];
var character = argument[1];

var index = ds_list_find_index(scrollHero.availableCharacters, character);
if(index != -1) {
    scrollHero.image_index = index;
}
