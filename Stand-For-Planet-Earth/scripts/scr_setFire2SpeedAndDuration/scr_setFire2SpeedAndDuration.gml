///scr_setFire2SpeedAndDuration(Sprite du Fire2)

fire2Sprite = argument[0];
fire2SpriteSpeed = (shot2PerSec*sprite_get_number(fire2Sprite))/room_speed; //vitesse du sprite fire 2
recuperationDuration2 = room_speed/shot2PerSec                              //temps de récuperation
