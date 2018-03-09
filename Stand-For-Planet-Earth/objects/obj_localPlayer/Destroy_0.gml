with(obj_dashBar)
{
    instance_destroy ();
}
with(obj_persoBar)
{
    if (self.hero == other.id)
    {
        instance_destroy ();
    }
}
with(obj_aimLaser){
	if(self.hero == other.id){
		instance_destroy();	
	}
}
with(obj_lightCollisionCircle){
	if(self.parent == other.id){
		instance_destroy();	
	}
}
ds_list_destroy(linkedHeros);
ds_list_destroy(objectBlockingMovement);

if(part_emitter_exists(Sname,emitter1)){
	part_emitter_destroy(Sname,emitter1)	
}