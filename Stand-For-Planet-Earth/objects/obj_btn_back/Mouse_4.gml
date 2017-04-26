if (targetRoom == rm_multi || targetRoom == rm_mainMenu)
{
    scr_closeConnectionToServer();
}

// Go to targetRoom
event_inherited();

