/// @description scr_drawOtherBar(object_index, spriteIndex)

var objectIndex = argument[0]
var spriteIndex = argument[1]

if(self.hero.object_index == objectIndex) {
	draw_sprite(spriteIndex,otherBarImageIndex,x-37+sprite_get_width(spriteIndex)/2,y-40-sprite_get_height(spriteIndex)/2);
}