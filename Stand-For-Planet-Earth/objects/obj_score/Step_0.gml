/// @description 
civilKilled = clamp(civilKilled,0,totalCivil);
soldierKilled = clamp(soldierKilled,0,totalSoldier);

percentOfCivilKilled =(civilKilled/totalCivil) *100;
percentOfSoldierKilled = (soldierKilled/totalSoldier) *100;