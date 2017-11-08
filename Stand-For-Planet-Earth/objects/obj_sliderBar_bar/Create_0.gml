/// @description 

rightLimit = x+ sprite_get_width(sprite_index)/2 -30;
leftLimit = x- sprite_get_width(sprite_index)/2 +30;

slide = instance_create_depth(x,y,depth-1,obj_sliderBar_slider);
slide.barLenght = sprite_get_width(spr_sliderBar_slider);
slide.rightLimit = rightLimit;
slide.leftLimit = leftLimit;
slide.percentage =100;

slide.x = slide.leftLimit + ((slide.percentage/100) * (slide.rightLimit-slide.leftLimit));