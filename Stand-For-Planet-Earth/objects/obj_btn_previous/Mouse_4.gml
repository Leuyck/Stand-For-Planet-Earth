with (obj_btn_scrollHero)
{
    if(self.buttonId == global.playerId)
    {
        image_index--;
        if(image_index < 0)
        {
            image_index = image_number - 1;
        }
    }
}
with(obj_btn_scrollResolution){
	self.resolution++;
}