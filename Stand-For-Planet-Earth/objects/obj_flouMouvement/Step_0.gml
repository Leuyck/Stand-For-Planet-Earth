if(fade_life<0) then fade_life = fade_steps;

fade_steps -=1;
image_alpha = fade_steps/fade_life;
if(fade_steps<0) then instance_destroy();

