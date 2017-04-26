/// alarm shieldSize
if (shieldSize < shieldBuffFactor * (currentMaxEnergy/100))
{
    shieldSize += 0.1;
}
else if (currentMaxEnergy == 100 && shieldSize > currentMaxEnergy/100)
{
    shieldSize -= 0.1
}  

alarm[6] = 0.1 * room_speed;




