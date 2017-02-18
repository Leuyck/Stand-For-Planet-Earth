/// scr_fire2CheckBatBot();
if(fire2)
{
    switch numberOfBatte
    {
        case 2 :
            numberOfBatte--;
            break;
            
        case 1 :
            numberOfBatte--;
            break;
            
        case 0 :
            numberOfBatte = 2;
            break;
            
    }
    mouse_clear(mb_right);
}

