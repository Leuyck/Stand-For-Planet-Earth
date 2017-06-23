/// @description scr_drawOtherBar(object_index, spriteIndex)

var objectIndex = argument[0]
var spriteIndex = argument[1]

if(self.hero.object_index == objectIndex) 
{
	draw_sprite(spriteIndex,otherBarImageIndex,x+15,y-20);
}