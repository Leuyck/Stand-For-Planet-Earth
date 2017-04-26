

if (room == rm_join)
{
    if (obj_textbox_ip.txt != "" && obj_textbox_port.txt !="")
    {
        global.IPAddress = obj_textbox_ip.txt;
        global.port = real(obj_textbox_port.txt);
        
        instance_create(x, y, obj_client);
    }
    else
    {
        scr_showNotification ("Veuillez entrer une adresse IP et un port !", c_red)
    }
}
else
{
    event_inherited()
}
    


