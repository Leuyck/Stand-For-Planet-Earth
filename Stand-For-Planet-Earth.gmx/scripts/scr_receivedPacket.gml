///client script : ReceivedPacket

var buffer = argument[0];
var msgid = buffer_read (buffer, buffer_u8);

switch (msgid) {
    case 1 :
        var time = buffer_read (buffer, buffer_u32);
        ping = current_time - time;
    break;
    
    case 2 :
        var response = buffer_read(buffer, buffer_u8);
        
        switch (response)
        {
            case 0 : // failure
                scr_showNotification ("registration failed ! Username already exists!")
            break;
            
            case 1: //success
                room_goto(room_mainMenu);
            break;
        }
    break;
    
    case 3:
    
        var response = buffer_read(buffer, buffer_u8);
        
        switch (response)
        {
            case 0 : // failure
                scr_showNotification ("Login failed ! Username doesn't exist or password is incorrect!")
            break;
            
            case 1: //success
                room_goto(room_mainMenu);
            break;
        }
    break;
    
    case 4 :  // reçoit le playerIdcounter
         global.playerId = buffer_read (buffer, buffer_u32);
         scr_showNotification ("Our playerId has been seen")
    break;
    
    case 5 : // reçoit le playerLeavingId pour détruire ou non le player
         var pId = buffer_read (buffer, buffer_u32);
         with (obj_remotePlayer)
         {
            if (remotePlayerId == pId)
            {
                instance_destroy();
            }
         }
         
    break;
    
    case 6 : // génère ou non les remotePlayers en fonction du storedPlayerSocket reçu
         var pId = buffer_read (buffer, buffer_u32);
         var pName = buffer_read (buffer, buffer_string);
    
        var instance = noone;
        
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                instance = id;
            }
        }
        
        if (instance == noone)
        {
            //only if we're in the gameworld
            if(instance_exists (obj_localPlayer))
            {
                //create a remote player
                var remotePlayer = instance_create(room_width/2, room_height/2, obj_remotePlayer);
                remotePlayer.remotePlayerId = pId
                remotePlayer.remotePlayerName = pName
            } 
        }
        else
        {
            with(instance)
            {
                instance_destroy();
            }
        }
   
    break;
    
    case 7 : // player movement update response
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteNumber = buffer_read (buffer, buffer_u8);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var d = buffer_read (buffer, buffer_u8);
        
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                x = xx;
                y = yy ;
                
                switch (spriteNumber)
                {
                    case 1 :
                        sprite_index = spr_player_stand
                    break;
                    
                    case 2 :
                        sprite_index = spr_player_jump
                    break;
                    
                    case 3 :
                        sprite_index = spr_player_duck
                    break;
                    
                    case 4 :
                        sprite_index = spr_player_walk
                    break;
                    
                    case 5 :
                        sprite_index = spr_player_run
                    break;                                   
                }
                
                image_index = imageIndex;
                
                switch (d)
                {
                
                    case 1 :
                        image_xscale = -1;
                    break;
                    
                    case 2 :
                        image_xscale = 1;
                    break;
                }
            }
        }
    break;
    
    case 8:
        var pId = buffer_read (buffer, buffer_u32);
        var text = buffer_read (buffer, buffer_string);
        
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                // create the chat objet to follow this remote player
                var chat = instance_create (x, y, obj_chat);
                chat.text = text;
                chat.owner = id;
            }
        }
    
    
    
    break;
//case statements go here
}

