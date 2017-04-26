///set the fire2
event_inherited()

if (global.playerId == self.playerId)
{
    if (instance_exists(obj_chatTyping) && obj_chatTyping.isTyping == false)
    {
        scr_hero2_fire2Check()
    }
}

