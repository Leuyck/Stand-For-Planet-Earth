///scr_createAndSendNewBullet (obj_hero, obj_bullet)

var hero = argument[0]
var bullet = argument[1]

var bullet_id
bullet_id = instance_create (hero.x+lengthdir_x(193.00,hero.dir+0.30), hero.y+lengthdir_y(193.00,hero.dir+0.30), bullet);
bullet_id.direction = point_direction(hero.x,hero.y,mouse_x, mouse_y) + random_range(-hero.precision, hero.precision)
bullet_id.image_angle = bullet_id.direction;


buffer_seek (global.bufferNetwork , buffer_seek_start, 0);
buffer_write(global.bufferNetwork, buffer_u8, 9);
buffer_write(global.bufferNetwork, buffer_u32, global.playerId);
buffer_write(global.bufferNetwork, buffer_f32, bullet_id.direction);
buffer_write(global.bufferNetwork, buffer_f32, bullet_id.x);
buffer_write(global.bufferNetwork, buffer_f32, bullet_id.y);
network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));
     
