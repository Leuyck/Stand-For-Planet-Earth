with (obj_btn_scrollHero)
{
    if(self.buttonId == global.playerId)
    {
        image_index++;
        if(image_index == image_number)
        {
            image_index = 0;
        }
    }
}

