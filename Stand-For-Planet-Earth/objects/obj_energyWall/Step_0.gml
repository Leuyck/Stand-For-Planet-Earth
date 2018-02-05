if (owner.currentEnergy == 0)
{
    instance_destroy();
}
if (!instance_exists(owner))
{
    instance_destroy();
}

if(destroy){
	image_alpha -= 0.01
    
	if (image_alpha == 0){
	    instance_destroy();
	}
}
