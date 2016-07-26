 if (speed >0) then state = "moving";
 else state = "standing";
 
 switch (state)
 {
     case "standing" :
     sprite_index = spr_npc1_stand;
     image_speed = 0.25;
     break;
     
     case "moving" :
     sprite_index = spr_npc1_move;
     image_speed = 0.30;     
     break;
 }
