/*with (obj_localPlayer) 
{
    i = place_meeting(self.x,self.y,other.id)
    zoneEntered = i !=0
    if((zoneEntered)&&(ds_list_find_index(other.ds_playerReady,self.id)==-1))
    {
        ds_list_add(other.ds_playerReady,self.id);
    }
    else if (!zoneEntered)
    {
        ds_list_delete(other.ds_playerReady,(ds_list_find_index(other.ds_playerReady,self.id)));
    }
}
if(ds_list_size(ds_playerReady)==instance_number(obj_localPlayer)&& previousRoom !=noone&&alarm[0]<=0)
{
        scr_askAllPlayersToGoToRoom(obj_previousRoom.previousRoom);
        alarm[0] = activationTime*room_speed;
}



