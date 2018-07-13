/// @description 
sprite_index = spr_casierModulable;
if(irandom(2)!=2) then closed = true;
porteGaucheX = 4;
porteGaucheY = 84;
porteDroiteX = 181;
porteDroiteY = 84;
if(angleGauche ==0 && !closed) then angleGauche = irandom(maxAngle)
if(angleDroite ==0 && !closed) then angleDroite = irandom(maxAngle)
