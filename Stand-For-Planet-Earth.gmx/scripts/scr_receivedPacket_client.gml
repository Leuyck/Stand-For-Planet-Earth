///client script : ReceivedPacket

var buffer = argument[0];
var msgid = buffer_read (buffer, buffer_u8);

switch (msgid) 
{
    case 1 :
        var time = buffer_read (buffer, buffer_u32);
        ping = current_time - time;
        break;
    
    case 2 :
        global.map = buffer_read(buffer, buffer_string);
        
        if (global.map!="")//si global.map est definie
        {
            scr_transitionMapTo(rm_choseHero);
        }
        else
        {
            scr_transitionMapTo(rm_waitingMap);
        }
        break;
    
    case 4 :  // reçoit son id de player
        global.playerId = buffer_read (buffer, buffer_u32);
         
        buffer_seek(global.bufferNetwork, buffer_seek_start, 0);
        buffer_write (global.bufferNetwork, buffer_u8, 2);
        buffer_write (global.bufferNetwork, buffer_u32, global.playerId);
        buffer_write (global.bufferNetwork, buffer_string, global.playerPseudo);
        network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
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
    
    case 6 : // créer le localPlayer aux positions données par le server.
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var playerCharacter = buffer_read (buffer, buffer_string);
        var xpos = buffer_read (buffer, buffer_f32);
        var ypos = buffer_read (buffer, buffer_f32);
        
        if (global.playerId == pId)
        {       
            instance_create(xpos, ypos, obj_localPlayer);
        }
        else
        {
            //create a remote player
            var remotePlayer = instance_create(xpos,ypos, obj_remotePlayer);
            remotePlayer.remotePlayerId = pId;
            remotePlayer.remotePlayerName = pName;
            remotePlayer.remotePlayerCharacter = playerCharacter;
        }
            
   
    break;
    
    case 7 : // player movement update response
        var pId = buffer_read (buffer, buffer_u32);
        var xx = buffer_read (buffer, buffer_f32);
        var yy = buffer_read (buffer, buffer_f32);
        var spriteIndex= buffer_read (buffer, buffer_u32);
        var imageIndex = buffer_read (buffer, buffer_u8);
        var dir = buffer_read (buffer, buffer_f32);
        
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                x = xx;
                y = yy ;
                image_angle = dir;
                sprite_index = spriteIndex;
                image_index = imageIndex;             
            }
        }
        break;
    
    case 8: //chat
        var pId = buffer_read (buffer, buffer_u32);
        var pName = buffer_read (buffer, buffer_string);
        var text = buffer_read (buffer, buffer_string);
        
        with (obj_remotePlayer)
        {
            if (remotePlayerId == pId)
            {
                scr_createAndMoveChat(text, pName, obj_remotePlayer)
            }
        }
    
    
    
    break;
    
    case 9 : //create bullets from other players
    
        var pId = buffer_read (buffer, buffer_u32);
        var bulletDirection = buffer_read (buffer, buffer_f32);
        var bulletx = buffer_read (buffer, buffer_f32);
        var bullety = buffer_read (buffer, buffer_f32);
     
        bullet_id = instance_create (bulletx, bullety, obj_bullet3);
        bullet_id.direction = bulletDirection;
        bullet_id.image_angle = bullet_id.direction;
          
        break;
    
    case 10:    //create the npc
    
            var npcId = buffer_read(buffer, buffer_u32);
            var xx = buffer_read (buffer, buffer_f32);
            var yy = buffer_read (buffer, buffer_f32);
            var npcType = buffer_read(buffer, buffer_u8);
            var dir = buffer_read(buffer, buffer_f32);
            var spd = buffer_read(buffer, buffer_u8);
            var spriteNumber = buffer_read (buffer, buffer_u8);
            var imageIndex = buffer_read (buffer, buffer_u8);
                
             if (room == rm_world1)
             {
          
                var instance = noone;
                
                with (obj_remoteNpc1)
                {
                    if (remoteNpcId == npcId)
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
                        var remoteNpc = instance_create(xx, yy, obj_remoteNpc1);
                        remoteNpc.remoteNpcId = npcId;
                        remoteNpc.direction = dir;
                        remoteNpc.speed = spd;
                        remoteNpc.npcType= npcType;
                    } 
                }
                else
                {
                    instance.x = xx;
                    instance.y = yy;
                    instance.direction = dir;
                    instance.image_angle = instance.direction;
                    instance.speed = spd;
                    
                        switch (spriteNumber)
                    {
                        case 1 :
                            instance.sprite_index = spr_npc1_stand
                        break;
                        
                        case 2 :
                            instance.sprite_index = spr_npc1_move
                        break;                                
                    }
                    
                    instance.image_index = imageIndex;
                    
                    }    
                         
                }
        
    break;
    
    case 11 : //npc's life
        var npcId = buffer_read(buffer, buffer_u32);
        var npcHealth = buffer_read (buffer, buffer_u32);
    
        with (obj_remoteNpc1)
        {
            if (remoteNpcId == npcId)
            {
                if (npcHealth <= 0)
                {
                    instance_destroy();
                }   
            }
        }    
    break;
    
    case 12 : //door statement
        
    var doorId = buffer_read(buffer, buffer_u8);
    var imageIndex = buffer_read(buffer, buffer_u32);
    if (room=rm_world1 || room=rm_world2)
    {
        with(obj_door)
        {
            if (self.doorId == doorId)
            {
                self.image_index = imageIndex
            }
        }
    }
    
    break;
//case statements go here
}

