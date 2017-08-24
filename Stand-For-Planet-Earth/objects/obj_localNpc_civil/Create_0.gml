event_inherited();

fear = false;
fearObject = noone;
runDuration = 5*room_speed;
fearDuration = 10*room_speed;
hearRange = 500;
viewRange = 500;
heroSpotted = false;

peopleFeared = ds_list_create();

alarm[5] = -1; ///fear duration
alarm[6] = -1; ///run duration