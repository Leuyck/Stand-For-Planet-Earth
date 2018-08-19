/// Initialisation
event_inherited();

DEBUG_ATTACK_RANGE = false;

relativeBoutCanonX = 185                    //différence de position entre X et weaponX
relativeBoutCanonY = -4                     //différence de position entre Y et weaponY
attack_range = irandom_range(attack_range_min,attack_range_max);                 // Distance d'attaque
shot1PerSec = shot1PerSecMax;       // Cadence de tir par sec
ennemySpotted = false;              // Indique si un ennemy a été détecté.
remainingAmoQuantity = amoQuantity;          // Quantités restantes de munitions