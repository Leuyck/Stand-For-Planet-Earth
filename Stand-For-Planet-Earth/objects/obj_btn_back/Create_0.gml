event_inherited();

if (room == rm_join || room == rm_choseHero)
{
    targetRoom = rm_multi;
}else if (room == rm_optionVideo || room == rm_optionSound){
	targetRoom = rm_option;
}
else
{
    targetRoom = rm_mainMenu;
}

