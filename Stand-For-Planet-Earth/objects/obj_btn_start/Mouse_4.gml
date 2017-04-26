if(obj_chose_hero_information.currentMap != "")
{
    var mapInstance = asset_get_index(obj_chose_hero_information.currentMap);
    if(instance_exists(obj_server)) {
        scr_askAllPlayersToGoToRoom(mapInstance);
        global.map = obj_chose_hero_information.currentMap;
    }
    else {
        scr_transitionMapTo(mapInstance);
    }
}
else
{
    scr_showNotification("You need to choose a map.", c_red);
}

