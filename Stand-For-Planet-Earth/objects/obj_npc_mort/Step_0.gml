/// @description 
if(parent == obj_npc_civil_malette){
sprite_index = spr_npc_valise_mort;
}

if(image_index >=image_number-1){
image_index = image_number-1;
instance_destroy();
}