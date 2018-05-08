///initialize
event_inherited();

controllerIndex = 0;
controllerName = "xbox";

nextButton = instance_create_depth(x+65+sprite_get_width(spr_btn_next),y,depth,obj_btn_next);
nextButton.parent = self.id;
prevButton = instance_create_depth(x-65-sprite_get_width(spr_btn_previous),y,depth,obj_btn_previous);
prevButton.parent = self.id;