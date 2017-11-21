event_inherited();

if (room == rm_join || room == rm_choseHero)
{
    targetRoom = rm_mainMenu;
}else if (room == rm_optionVideo || room == rm_optionSound || room == rm_optionControl){
	targetRoom = rm_option;
}
else
{
    targetRoom = rm_mainMenu;
}

