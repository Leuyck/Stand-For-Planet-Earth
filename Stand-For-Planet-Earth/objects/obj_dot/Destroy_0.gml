with(attachedTo)
{
    self.spd = self.spd*other.moveSpeedDividor;
    self.spdChase = self.spdChase*other.moveSpeedDividor;
    self.shot1PerSec = self.shot1PerSec*other.attackSpeedDividor;
    
    if(self.spd > self.normalSpd) then self.spd = self.normalSpd;
    if(self.spdChase > self.normalSpd*2) then self.spdChase = self.normalSpd*2;
    if(self.shot1PerSec>self.shot1PerSecMax) then self.shot1PerSec = self.shot1PerSecMax;
}

