with(obj_dashBar)
{
    instance_destroy ();
}
with(obj_healthBar)
{
    if (self.hero == other.id)
    {
        instance_destroy ();
    }
}
ds_list_destroy(linkedHeros);

