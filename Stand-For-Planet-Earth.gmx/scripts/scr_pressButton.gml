///scr_pressButton(button)


var button = argument[0]

if (useKey)
{ 
    var btn = instance_place(x,y,button);
    if (btn != noone)
    {        
        scr_openDoor(btn);
    }
}
