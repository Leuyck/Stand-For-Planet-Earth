///scr_giveDotTo(dotedCharacter)

var dotedCharacter = argument[0];
dot = instance_create(x,y,obj_dot);
dot.damagePerTic = damagePerTic;
dot.moveSpeedDividor = moveSpeedDividor;
dot.attackSpeedDividor = attackSpeedDividor;
dot.attachedTo = dotedCharacter;
dot.numberOfTic = numberOfTic;
dot.tic = numberOfTic;
