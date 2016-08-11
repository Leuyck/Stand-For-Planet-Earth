///scr_sendCurrentMapToClients()

for (var i = 0; i < ds_list_size (global.players); i++)
{
    var storedPlayerSocket = ds_list_find_value (global.players, i);
    scr_sendCurrentMapToClient(storedPlayerSocket);
}
