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
	instance_destroy();	
}
ds_list_destroy(linkedHeros);

