///Tic
if(tic == numberOfTic)
{
    with(attachedTo)
    {
        self.spd = self.spd/other.moveSpeedDividor;
		self.currentHealth -= other.damagePerTic;
		self.spdChase = self.spdChase/other.moveSpeedDividor;
		if(self.object_index == obj_localNpc_soldier){
	        self.shot1PerSec = self.shot1PerSec/other.attackSpeedDividor;
		}
    }
    tic--;
    alarm[0] = ticDuration;
}
if(tic >0)
{
    with(attachedTo)
    {
        self.currentHealth -= other.damagePerTic;
    }
    tic--;
    alarm[0] = ticDuration;
}
if (tic <=0)
{
    instance_destroy();
}

