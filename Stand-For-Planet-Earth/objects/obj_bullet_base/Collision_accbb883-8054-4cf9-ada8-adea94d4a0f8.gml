/// @description 
if(owner == "ennemi")
{
	if (other.currentHealth > 0) then other.currentHealth -= damage;
	instance_destroy();
}
