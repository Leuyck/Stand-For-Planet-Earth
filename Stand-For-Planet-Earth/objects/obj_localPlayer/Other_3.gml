/// @description 
with(obj_healthBar){
    if (self.hero == other.id){
        instance_destroy ();
    }
}
with(obj_aimLaser){
	instance_destroy();	
}
ds_list_destroy(linkedHeros);

if(part_emitter_exists(Sname,emitter1)){
	part_emitter_destroy(Sname,emitter1)	
}